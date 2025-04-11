.class public abstract Lb9/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:J

.field public static final b:J

.field public static final c:J

.field public static final d:J

.field public static final e:J

.field public static final f:J

.field public static final g:J

.field public static final h:J

.field public static final i:J

.field public static final j:J

.field public static final k:J


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lb9/a;->a:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lb9/a;->b:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    sput-wide v5, Lb9/a;->c:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lb9/a;->d:J

    const-wide/16 v5, 0x5

    mul-long v7, v0, v5

    sput-wide v7, Lb9/a;->e:J

    const-wide/16 v7, 0x3

    mul-long v9, v3, v7

    sput-wide v9, Lb9/a;->f:J

    const-wide/16 v9, 0x1e

    mul-long/2addr v9, v3

    sput-wide v9, Lb9/a;->g:J

    mul-long/2addr v7, v3

    sput-wide v7, Lb9/a;->h:J

    const-wide/16 v7, 0x14

    mul-long/2addr v7, v3

    sput-wide v7, Lb9/a;->i:J

    sput-wide v0, Lb9/a;->j:J

    mul-long/2addr v3, v5

    sput-wide v3, Lb9/a;->k:J

    return-void
.end method
