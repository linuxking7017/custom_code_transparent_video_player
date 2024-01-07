package com.example.myapplication;

import android.os.Bundle;

import androidx.appcompat.app.AppCompatActivity;

import com.alphamovie.lib.AlphaMovieView;

public class MainActivity extends AppCompatActivity {

    private AlphaMovieView alphaMovieView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        alphaMovieView = findViewById(R.id.video_player);
        alphaMovieView.setVideoFromAssets("video.webm");
    }

    @Override
    public void onResume() {
        super.onResume();
        alphaMovieView.onResume();
    }

    @Override
    public void onPause() {
        super.onPause();
        alphaMovieView.onPause();
    }
}
