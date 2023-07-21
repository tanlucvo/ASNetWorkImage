import {
  Platform,
  UIManager,
  requireNativeComponent,
  type ViewStyle,
} from 'react-native';

const LINKING_ERROR =
  `The package 'image' doesn't seem to be linked. Make sure: \n\n` +
  Platform.select({ ios: "- You have run 'pod install'\n", default: '' }) +
  '- You rebuilt the app after installing the package\n' +
  '- You are not using Expo Go\n';

type ASNetWorkImageProps = {
  color: string;
  style: ViewStyle;
};
type RNTImageProps = {
  uri: string;
  style: ViewStyle;
};

const ComponentName = 'ASNetWorkImageView';
const ComponentName1 = 'RNTImage';
const ComponentName2 = 'RNTAnimatedImage';

export const ASNetWorkImageView =
  UIManager.getViewManagerConfig(ComponentName) != null
    ? requireNativeComponent<ASNetWorkImageProps>(ComponentName)
    : () => {
        throw new Error(LINKING_ERROR);
      };
export const RNTImage =
  UIManager.getViewManagerConfig(ComponentName1) != null
    ? requireNativeComponent<RNTImageProps>(ComponentName1)
    : () => {
        throw new Error(LINKING_ERROR);
      };

export const RNTAnimatedImage =
  UIManager.getViewManagerConfig(ComponentName2) != null
    ? requireNativeComponent<RNTImageProps>(ComponentName2)
    : () => {
        throw new Error(LINKING_ERROR);
      };
