package com.example.live_and_learn

import android.os.Bundle
import android.view.KeyEvent
import io.flutter.embedding.android.FlutterActivity
import io.flutter.plugin.common.MethodChannel


class MainActivity: FlutterActivity() {
    // var methodChannel: MethodChannel? = null;

    // override fun onCreate(savedInstanceState: Bundle?) {
    //     super.onCreate(savedInstanceState);
    //     methodChannel = MethodChannel(flutterEngine!!.dartExecutor.binaryMessenger, "app.sudo.land/live_and_learn/example");
    // }

    // override fun onKeyUp(keyCode: Int, event: KeyEvent): Boolean {
    //     return when (keyCode) {
    //         KeyEvent.KEYCODE_VOLUME_DOWN -> {
    //             methodChannel?.invokeMethod("PHYSICAL_BUTTON_UP", "VOLUME_DOWN");
    //             true;
    //         }
    //         KeyEvent.KEYCODE_VOLUME_UP -> {
    //             methodChannel?.invokeMethod("PHYSICAL_BUTTON_UP", "VOLUME_UP");
    //             true;
    //         }
    //         else -> super.onKeyUp(keyCode, event);
    //     }
    // }
}