.class public Lcom/android/server/pm/ParallelPackageParser;
.super Ljava/lang/Object;
.source "ParallelPackageParser.java"


# instance fields
.field public final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field public volatile mInterruptedInThread:Ljava/lang/String;

.field public final mPackageParser:Lcom/android/server/pm/parsing/PackageParser2;

.field public final mQueue:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method public static synthetic $r8$lambda$vh1E89mUxrNtwBW2gELaXdFi9Q4(Lcom/android/server/pm/ParallelPackageParser;Ljava/io/File;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ParallelPackageParser;->lambda$submit$0(Ljava/io/File;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/ParallelPackageParser;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 58
    iput-object p1, p0, Lcom/android/server/pm/ParallelPackageParser;->mPackageParser:Lcom/android/server/pm/parsing/PackageParser2;

    .line 59
    iput-object p2, p0, Lcom/android/server/pm/ParallelPackageParser;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private synthetic lambda$submit$0(Ljava/io/File;I)V
    .locals 4

    .line 103
    new-instance v0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    invoke-direct {v0}, Lcom/android/server/pm/ParallelPackageParser$ParseResult;-><init>()V

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parallel parsePackage ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x40000

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 106
    :try_start_0
    iput-object p1, v0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->scanFile:Ljava/io/File;

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ParallelPackageParser;->parsePackage(Ljava/io/File;I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object p1

    iput-object p1, v0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->parsedPackage:Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 109
    :try_start_1
    iput-object p1, v0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;->throwable:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 114
    :try_start_2
    iget-object p1, p0, Lcom/android/server/pm/ParallelPackageParser;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 116
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 120
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/ParallelPackageParser;->mInterruptedInThread:Ljava/lang/String;

    :goto_1
    return-void

    :catchall_1
    move-exception p0

    .line 111
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 112
    throw p0
.end method

.method public static makeExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 3

    const-string/jumbo v0, "package-parsing-thread"

    const/4 v1, -0x2

    const/4 v2, 0x4

    .line 49
    invoke-static {v2, v0, v1}, Lcom/android/internal/util/ConcurrentUtils;->newFixedThreadPool(ILjava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public parsePackage(Ljava/io/File;I)Lcom/android/server/pm/parsing/pkg/ParsedPackage;
    .locals 1

    .line 128
    iget-object p0, p0, Lcom/android/server/pm/ParallelPackageParser;->mPackageParser:Lcom/android/server/pm/parsing/PackageParser2;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/parsing/PackageParser2;->parsePackage(Ljava/io/File;IZ)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object p0

    return-object p0
.end method

.method public submit(Ljava/io/File;I)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/android/server/pm/ParallelPackageParser;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/ParallelPackageParser$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ParallelPackageParser;Ljava/io/File;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public take()Lcom/android/server/pm/ParallelPackageParser$ParseResult;
    .locals 3

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ParallelPackageParser;->mInterruptedInThread:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 88
    iget-object p0, p0, Lcom/android/server/pm/ParallelPackageParser;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/ParallelPackageParser$ParseResult;

    return-object p0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interrupted in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/ParallelPackageParser;->mInterruptedInThread:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 91
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
