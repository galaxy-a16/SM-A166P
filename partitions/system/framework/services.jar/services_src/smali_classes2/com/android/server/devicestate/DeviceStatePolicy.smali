.class public abstract Lcom/android/server/devicestate/DeviceStatePolicy;
.super Ljava/lang/Object;
.source "DeviceStatePolicy.java"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStatePolicy;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract configureDeviceForState(ILjava/lang/Runnable;)V
.end method

.method public abstract getDeviceStateProvider()Lcom/android/server/devicestate/DeviceStateProvider;
.end method
