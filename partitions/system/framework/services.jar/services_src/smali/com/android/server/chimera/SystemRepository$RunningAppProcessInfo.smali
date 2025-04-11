.class public Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;
.super Ljava/lang/Object;
.source "SystemRepository.java"


# instance fields
.field public DRAMUsed:J

.field public avgPss:J

.field public flags:I

.field public importance:I

.field public initialIdlePss:J

.field public isFocused:Z

.field public isProtectedInPicked:Z

.field public lastActivityTime:J

.field public lastPss:J

.field public lastSwapPss:J

.field public lru:I

.field public maxPss:J

.field public minPss:J

.field public pid:I

.field public pkgList:[Ljava/lang/String;

.field public processName:Ljava/lang/String;

.field public processState:I

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
