public class Hello {
    public static void main(String[] args) {
        System.out.println("Hello, Android!");
    }
}

package com.example.helloworld;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;

public class MainActivity extends Activity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        TextView text = new TextView(this);
        text.setText("Hello World!");
        text.setTextSize(32);

        setContentView(text);
    }
}
