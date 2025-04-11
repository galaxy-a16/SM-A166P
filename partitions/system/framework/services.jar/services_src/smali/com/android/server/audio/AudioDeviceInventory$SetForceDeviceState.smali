.class public Lcom/android/server/audio/AudioDeviceInventory$SetForceDeviceState;
.super Ljava/lang/Object;
.source "AudioDeviceInventory.java"


# instance fields
.field public final mActiveBTDeviceName:Ljava/lang/String;

.field public final mAddress:Ljava/lang/String;

.field public final mDevice:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2907
    iput p1, p0, Lcom/android/server/audio/AudioDeviceInventory$SetForceDeviceState;->mDevice:I

    .line 2908
    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceInventory$SetForceDeviceState;->mAddress:Ljava/lang/String;

    .line 2909
    iput-object p3, p0, Lcom/android/server/audio/AudioDeviceInventory$SetForceDeviceState;->mActiveBTDeviceName:Ljava/lang/String;

    return-void
.end method
