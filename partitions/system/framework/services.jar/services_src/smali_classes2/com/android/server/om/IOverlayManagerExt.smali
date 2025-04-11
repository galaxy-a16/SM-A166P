.class public interface abstract Lcom/android/server/om/IOverlayManagerExt;
.super Ljava/lang/Object;
.source "IOverlayManagerExt.java"


# virtual methods
.method public abstract addOverlays(Ljava/util/List;Landroid/content/om/ISamsungOverlayCallback;I)V
.end method

.method public abstract changeOverlayState(Ljava/lang/String;IZ)Z
.end method

.method public abstract getAllOverlaysInCategory(II)[Landroid/content/om/OverlayInfoExt;
.end method

.method public abstract getOverlayForPath(Ljava/lang/String;I)Landroid/content/om/OverlayInfoExt;
.end method

.method public abstract getOverlaysForTarget(Ljava/lang/String;II)[Landroid/content/om/OverlayInfoExt;
.end method

.method public abstract getTargetPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract handleStateUpdate(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/om/CriticalOverlayInfo;II)I
.end method

.method public abstract handleUserSwitch(I)V
.end method

.method public abstract removeOverlays(Ljava/util/List;Landroid/content/om/ISamsungOverlayCallback;I)V
.end method

.method public abstract replaceOverlays(Ljava/util/List;Ljava/util/List;Landroid/content/om/ISamsungOverlayCallback;I)V
.end method

.method public abstract setIsInitonBoot(Z)V
.end method
