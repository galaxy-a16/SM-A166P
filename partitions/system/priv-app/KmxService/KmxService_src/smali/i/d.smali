.class public final Li/d;
.super Lkotlin/reflect/x;
.source "SourceFile"


# instance fields
.field public final i:Ljava/lang/Object;

.field public final j:Ljava/util/concurrent/ExecutorService;

.field public volatile k:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lkotlin/reflect/x;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Li/d;->i:Ljava/lang/Object;

    new-instance v0, Li/c;

    invoke-direct {v0, p0}, Li/c;-><init>(Li/d;)V

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Li/d;->j:Ljava/util/concurrent/ExecutorService;

    return-void
.end method
