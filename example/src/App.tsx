import React, { useMemo, useState } from 'react';

import { FlashList } from '@shopify/flash-list';
import { RNTAnimatedImage } from 'image';
import { SafeAreaView, StyleSheet, Text, TouchableOpacity } from 'react-native';
import FastImage from 'react-native-fast-image';

export default function App() {
  const [count, setCount] = useState(30);

  const [onShow, setOnShow] = useState(true);

  const data = useMemo(() => {
    return Array(count)
      .fill(null)
      .map((_, i) => i);
  }, [count]);

  const renderItem = ({ item }) => {
    return (
      <RNTAnimatedImage
        uri={`https://d1gfjavjl4xkd7.cloudfront.net/images/stupid-pig-1.webp?${item}`}
        style={styles.box}
      />
    );
    return (
      <FastImage
        source={{
          uri: `https://d1gfjavjl4xkd7.cloudfront.net/images/stupid-pig-1.webp?${item}`,
        }}
        style={styles.box}
      />
    );
  };

  const onEndReached = () => {
    if (count < 500) {
      setCount((c) => c + 30);
    }
  };

  return (
    <SafeAreaView style={{ flex: 1 }}>
      <TouchableOpacity onPress={() => setOnShow((c) => !c)}>
        <Text>SHow/hide</Text>
      </TouchableOpacity>
      {onShow && (
        <FlashList
          numColumns={3}
          renderItem={renderItem}
          data={data}
          onEndReached={onEndReached}
          removeClippedSubviews
          estimatedItemSize={100}
        />
      )}
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  box: {
    width: '100%',
    height: 150,
    borderRadius: 10,
  },
});
