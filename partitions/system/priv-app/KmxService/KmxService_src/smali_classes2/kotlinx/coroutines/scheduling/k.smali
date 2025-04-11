.class public abstract Lkotlinx/coroutines/scheduling/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:J

.field public static final b:I

.field public static final c:I

.field public static final d:J

.field public static final e:Lkotlinx/coroutines/scheduling/g;

.field public static final f:Lcom/google/gson/internal/c;

.field public static final g:Lcom/google/gson/internal/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const-string v0, "kotlinx.coroutines.scheduler.resolution.ns"

    const-wide/32 v1, 0x186a0

    const-wide/16 v3, 0x1

    const-wide v5, 0x7fffffffffffffffL

    invoke-static/range {v0 .. v6}, Lv4/b;->W(Ljava/lang/String;JJJ)J

    move-result-wide v0

    sput-wide v0, Lkotlinx/coroutines/scheduling/k;->a:J

    sget v0, Lkotlinx/coroutines/internal/a0;->a:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    const/16 v1, 0x8

    const-string v2, "kotlinx.coroutines.scheduler.core.pool.size"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4, v1}, Lv4/b;->X(Ljava/lang/String;IIII)I

    move-result v0

    sput v0, Lkotlinx/coroutines/scheduling/k;->b:I

    const-string v0, "kotlinx.coroutines.scheduler.max.pool.size"

    const/4 v1, 0x4

    const v2, 0x1ffffe

    invoke-static {v0, v2, v4, v2, v1}, Lv4/b;->X(Ljava/lang/String;IIII)I

    move-result v0

    sput v0, Lkotlinx/coroutines/scheduling/k;->c:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v5, "kotlinx.coroutines.scheduler.keep.alive.sec"

    const-wide/16 v6, 0x3c

    const-wide/16 v8, 0x1

    const-wide v10, 0x7fffffffffffffffL

    invoke-static/range {v5 .. v11}, Lv4/b;->W(Ljava/lang/String;JJJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lkotlinx/coroutines/scheduling/k;->d:J

    sget-object v0, Lkotlinx/coroutines/scheduling/g;->k:Lkotlinx/coroutines/scheduling/g;

    sput-object v0, Lkotlinx/coroutines/scheduling/k;->e:Lkotlinx/coroutines/scheduling/g;

    new-instance v0, Lcom/google/gson/internal/c;

    invoke-direct {v0, v4}, Lcom/google/gson/internal/c;-><init>(I)V

    sput-object v0, Lkotlinx/coroutines/scheduling/k;->f:Lcom/google/gson/internal/c;

    new-instance v0, Lcom/google/gson/internal/c;

    invoke-direct {v0, v3}, Lcom/google/gson/internal/c;-><init>(I)V

    sput-object v0, Lkotlinx/coroutines/scheduling/k;->g:Lcom/google/gson/internal/c;

    return-void
.end method
