﻿HI-brain用カメラコンポーネントのWindows版
cv::Retinaなどの入力にはOpenCVCameraCompではなくこのコンポーネントを用いる必要がある．

具体的にはRTC::CameraImage.bppに，格納されているデータ型が設定されている必要がある．
unsigned char型3チャンネルの場合，「CV_8UC3」をbppに格納している．