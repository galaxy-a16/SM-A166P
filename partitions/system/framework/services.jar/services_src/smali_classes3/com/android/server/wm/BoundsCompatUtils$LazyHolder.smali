.class public abstract Lcom/android/server/wm/BoundsCompatUtils$LazyHolder;
.super Ljava/lang/Object;
.source "BoundsCompatController.java"


# static fields
.field public static sBoundsCompatUtils:Lcom/android/server/wm/BoundsCompatUtils;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/wm/BoundsCompatUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/BoundsCompatUtils;-><init>(Lcom/android/server/wm/BoundsCompatUtils-IA;)V

    sput-object v0, Lcom/android/server/wm/BoundsCompatUtils$LazyHolder;->sBoundsCompatUtils:Lcom/android/server/wm/BoundsCompatUtils;

    return-void
.end method
