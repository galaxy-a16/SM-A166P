.class public Lcom/android/server/power/AbuseWakeLockDetector$WakeLockInfoPair;
.super Ljava/lang/Object;
.source "AbuseWakeLockDetector.java"


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput p1, p0, Lcom/android/server/power/AbuseWakeLockDetector$WakeLockInfoPair;->uid:I

    .line 176
    iput-object p2, p0, Lcom/android/server/power/AbuseWakeLockDetector$WakeLockInfoPair;->packageName:Ljava/lang/String;

    return-void
.end method
