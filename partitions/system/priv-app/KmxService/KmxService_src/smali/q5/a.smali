.class public abstract Lq5/a;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field public static final a:Lv4/a;

.field public static final b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    new-instance v7, Lv4/a;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lv4/a;-><init>(JJJ)V

    sput-object v7, Lq5/a;->a:Lv4/a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lq5/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method
