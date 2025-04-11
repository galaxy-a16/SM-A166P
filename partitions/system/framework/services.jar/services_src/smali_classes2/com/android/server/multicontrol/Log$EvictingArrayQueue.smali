.class public Lcom/android/server/multicontrol/Log$EvictingArrayQueue;
.super Ljava/lang/Object;
.source "Log.java"


# instance fields
.field public final mCapacity:I

.field public final mElements:Ljava/util/ArrayList;

.field public final mLock:Ljava/lang/Object;

.field public mPointer:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mPointer:I

    iput p1, p0, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mCapacity:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mPointer:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mCapacity:I

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mPointer:I

    iget-object v1, p0, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mCapacity:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    iget p0, p0, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mPointer:I

    invoke-virtual {v1, p0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mCapacity:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v5, p0, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mElements:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget v6, p0, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mPointer:I

    add-int/2addr v6, v3

    add-int/2addr v6, v4

    iget v7, p0, Lcom/android/server/multicontrol/Log$EvictingArrayQueue;->mCapacity:I

    rem-int/2addr v6, v7

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
