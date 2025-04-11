.class public Lio/netty/util/DefaultAttributeMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/AttributeMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/DefaultAttributeMap$DefaultAttribute;
    }
.end annotation


# static fields
.field private static final BUCKET_SIZE:I = 0x4

.field private static final MASK:I = 0x3

.field private static final updater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lio/netty/util/DefaultAttributeMap;",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile attributes:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lio/netty/util/DefaultAttributeMap$DefaultAttribute<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const-string v1, "attributes"

    const-class v2, Lio/netty/util/DefaultAttributeMap;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/netty/util/DefaultAttributeMap;->updater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static index(Lio/netty/util/AttributeKey;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/AttributeKey<",
            "*>;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lio/netty/util/AbstractConstant;->id()I

    move-result p0

    and-int/lit8 p0, p0, 0x3

    return p0
.end method


# virtual methods
.method public attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/AttributeKey<",
            "TT;>;)",
            "Lio/netty/util/Attribute<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lio/netty/util/DefaultAttributeMap;->attributes:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    sget-object v2, Lio/netty/util/DefaultAttributeMap;->updater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lio/netty/util/DefaultAttributeMap;->attributes:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    :cond_0
    invoke-static {p1}, Lio/netty/util/DefaultAttributeMap;->index(Lio/netty/util/AttributeKey;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    if-nez v2, :cond_2

    new-instance v2, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    invoke-direct {v2}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;-><init>()V

    new-instance v3, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    invoke-direct {v3, v2, p1}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;-><init>(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/AttributeKey;)V

    invoke-static {v2, v3}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$002(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    invoke-static {v3, v2}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$102(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    :cond_2
    monitor-enter v2

    move-object p0, v2

    :goto_0
    :try_start_0
    invoke-static {p0}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$000(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    invoke-direct {v0, v2, p1}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;-><init>(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/AttributeKey;)V

    invoke-static {p0, v0}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$002(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    invoke-static {v0, p0}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$102(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    monitor-exit v2

    return-object v0

    :cond_3
    invoke-static {v0}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$200(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/AttributeKey;

    move-result-object p0

    if-ne p0, p1, :cond_4

    invoke-static {v0}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$300(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Z

    move-result p0

    if-nez p0, :cond_4

    monitor-exit v2

    return-object v0

    :cond_4
    move-object p0, v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public hasAttr(Lio/netty/util/AttributeKey;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/AttributeKey<",
            "TT;>;)Z"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Lio/netty/util/DefaultAttributeMap;->attributes:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Lio/netty/util/DefaultAttributeMap;->index(Lio/netty/util/AttributeKey;)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    if-nez p0, :cond_1

    return v0

    :cond_1
    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$000(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    invoke-static {v1}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$200(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/AttributeKey;

    move-result-object v2

    if-ne v2, p1, :cond_2

    invoke-static {v1}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$300(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Z

    move-result v2

    if-nez v2, :cond_2

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-static {v1}, Lio/netty/util/DefaultAttributeMap$DefaultAttribute;->access$000(Lio/netty/util/DefaultAttributeMap$DefaultAttribute;)Lio/netty/util/DefaultAttributeMap$DefaultAttribute;

    move-result-object v1

    goto :goto_0

    :cond_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
