.class public Lcom/android/server/wm/TspStateController$DeviceSize;
.super Ljava/lang/Object;
.source "TspStateController.java"


# instance fields
.field public height:I

.field public initHeight:I

.field public initWidth:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->initWidth:I

    iput v0, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->initHeight:I

    iput v0, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->width:I

    iput v0, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->height:I

    return-void
.end method


# virtual methods
.method public set(IIII)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->width:I

    iput p2, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->height:I

    iput p3, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->initWidth:I

    iput p4, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->initHeight:I

    return-void
.end method
