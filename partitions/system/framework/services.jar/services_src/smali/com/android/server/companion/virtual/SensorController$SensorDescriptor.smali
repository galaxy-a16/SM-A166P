.class final Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;
.super Ljava/lang/Object;
.source "SensorController.java"


# instance fields
.field public final mHandle:I

.field public final mName:Ljava/lang/String;

.field public final mType:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput p1, p0, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->mHandle:I

    .line 270
    iput p2, p0, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->mType:I

    .line 271
    iput-object p3, p0, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHandle()I
    .locals 0

    .line 274
    iget p0, p0, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->mHandle:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 277
    iget p0, p0, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->mType:I

    return p0
.end method
