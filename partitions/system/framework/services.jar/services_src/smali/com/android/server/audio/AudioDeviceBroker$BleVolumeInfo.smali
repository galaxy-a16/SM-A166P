.class public final Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;
.super Ljava/lang/Object;
.source "AudioDeviceBroker.java"


# instance fields
.field public final mIndex:I

.field public final mMaxIndex:I

.field public final mStreamType:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    iput p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;->mIndex:I

    .line 833
    iput p2, p0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;->mMaxIndex:I

    .line 834
    iput p3, p0, Lcom/android/server/audio/AudioDeviceBroker$BleVolumeInfo;->mStreamType:I

    return-void
.end method
