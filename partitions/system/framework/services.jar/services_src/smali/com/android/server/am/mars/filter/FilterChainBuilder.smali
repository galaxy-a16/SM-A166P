.class public Lcom/android/server/am/mars/filter/FilterChainBuilder;
.super Ljava/lang/Object;
.source "FilterChainBuilder.java"


# instance fields
.field public filterChain:Lcom/android/server/am/mars/filter/FilterChain;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/am/mars/filter/IFilter;)Lcom/android/server/am/mars/filter/FilterChainBuilder;
    .locals 2

    .line 9
    new-instance v0, Lcom/android/server/am/mars/filter/FilterChain;

    iget-object v1, p0, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    invoke-direct {v0, p1, v1}, Lcom/android/server/am/mars/filter/FilterChain;-><init>(Lcom/android/server/am/mars/filter/IFilter;Lcom/android/server/am/mars/filter/FilterChain;)V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    return-object p0
.end method

.method public build()Lcom/android/server/am/mars/filter/FilterChain;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/android/server/am/mars/filter/FilterChainBuilder;->filterChain:Lcom/android/server/am/mars/filter/FilterChain;

    return-object p0
.end method
