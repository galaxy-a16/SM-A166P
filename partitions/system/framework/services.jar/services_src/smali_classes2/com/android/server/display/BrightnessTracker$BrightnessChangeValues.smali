.class public Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;
.super Ljava/lang/Object;
.source "BrightnessTracker.java"


# instance fields
.field public final brightness:F

.field public final isDefaultBrightnessConfig:Z

.field public final luxTimestamps:[J

.field public final luxValues:[F

.field public final powerBrightnessFactor:F

.field public final timestamp:J

.field public final uniqueDisplayId:Ljava/lang/String;

.field public final wasShortTermModelActive:Z


# direct methods
.method public constructor <init>(FFZZJLjava/lang/String;[F[J)V
    .locals 0

    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1040
    iput p1, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->brightness:F

    .line 1041
    iput p2, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->powerBrightnessFactor:F

    .line 1042
    iput-boolean p3, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->wasShortTermModelActive:Z

    .line 1043
    iput-boolean p4, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->isDefaultBrightnessConfig:Z

    .line 1044
    iput-wide p5, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->timestamp:J

    .line 1045
    iput-object p7, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->uniqueDisplayId:Ljava/lang/String;

    .line 1046
    iput-object p8, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->luxValues:[F

    .line 1047
    iput-object p9, p0, Lcom/android/server/display/BrightnessTracker$BrightnessChangeValues;->luxTimestamps:[J

    return-void
.end method
