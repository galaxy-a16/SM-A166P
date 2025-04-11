.class public interface abstract Lcom/samsung/android/localeoverlaymanager/ILocaleOverlayManager;
.super Ljava/lang/Object;
.source "ILocaleOverlayManager.java"


# virtual methods
.method public abstract applyLocales(Landroid/os/LocaleList;ILcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;)V
.end method

.method public abstract applyLocalesForPackage(Ljava/lang/String;IILcom/samsung/android/localeoverlaymanager/OverlayChangeObserver;)Z
.end method

.method public abstract applyPerAppLocale(Landroid/os/LocaleList;Ljava/lang/String;I)V
.end method

.method public abstract checkSanityOfOverlays(I)V
.end method

.method public abstract cleanUpOverlays()V
.end method

.method public abstract initializeOverlays(Z)V
.end method
