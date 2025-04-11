.class public final Lio/netty/handler/ssl/IdentityCipherSuiteFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/ssl/CipherSuiteFilter;


# static fields
.field public static final INSTANCE:Lio/netty/handler/ssl/IdentityCipherSuiteFilter;

.field public static final INSTANCE_DEFAULTING_TO_SUPPORTED_CIPHERS:Lio/netty/handler/ssl/IdentityCipherSuiteFilter;


# instance fields
.field private final defaultToDefaultCiphers:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/netty/handler/ssl/IdentityCipherSuiteFilter;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lio/netty/handler/ssl/IdentityCipherSuiteFilter;-><init>(Z)V

    sput-object v0, Lio/netty/handler/ssl/IdentityCipherSuiteFilter;->INSTANCE:Lio/netty/handler/ssl/IdentityCipherSuiteFilter;

    new-instance v0, Lio/netty/handler/ssl/IdentityCipherSuiteFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/handler/ssl/IdentityCipherSuiteFilter;-><init>(Z)V

    sput-object v0, Lio/netty/handler/ssl/IdentityCipherSuiteFilter;->INSTANCE_DEFAULTING_TO_SUPPORTED_CIPHERS:Lio/netty/handler/ssl/IdentityCipherSuiteFilter;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/netty/handler/ssl/IdentityCipherSuiteFilter;->defaultToDefaultCiphers:Z

    return-void
.end method


# virtual methods
.method public filterCipherSuites(Ljava/lang/Iterable;Ljava/util/List;Ljava/util/Set;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-boolean p0, p0, Lio/netty/handler/ssl/IdentityCipherSuiteFilter;->defaultToDefaultCiphers:Z

    if-eqz p0, :cond_0

    new-array p0, v0, [Ljava/lang/String;

    invoke-interface {p2, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-array p0, v0, [Ljava/lang/String;

    invoke-interface {p3, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p2

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    :goto_2
    new-array p1, v0, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method
