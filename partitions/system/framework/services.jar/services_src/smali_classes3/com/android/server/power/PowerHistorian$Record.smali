.class public abstract Lcom/android/server/power/PowerHistorian$Record;
.super Ljava/lang/Object;
.source "PowerHistorian.java"


# static fields
.field public static final sDumpDateFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field public final mRecordedTimeMillis:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/PowerHistorian$Record;->sDumpDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerHistorian$Record;->mRecordedTimeMillis:J

    return-void
.end method


# virtual methods
.method public getRecordedTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/PowerHistorian$Record;->mRecordedTimeMillis:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/android/server/power/PowerHistorian$Record;->sDumpDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/power/PowerHistorian$Record;->mRecordedTimeMillis:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
