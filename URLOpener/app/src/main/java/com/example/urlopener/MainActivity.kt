package com.example.urlopener

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.webkit.WebViewClient
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        btnOpen.setOnClickListener {
            val url = tvURL.text.toString()
//
            webView.webViewClient = WebViewClient()
            webView.loadUrl(url)
            webView.settings.javaScriptEnabled = true
            webView.settings.setSupportZoom(true)
        }
    }

    override fun onBackPressed() {

        if (webView.canGoBack())
            webView.goBack()

        else
            super.onBackPressed()
    }
}