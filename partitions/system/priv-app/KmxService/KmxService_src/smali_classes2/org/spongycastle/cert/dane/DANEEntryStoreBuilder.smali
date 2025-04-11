.class public Lorg/spongycastle/cert/dane/DANEEntryStoreBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final daneEntryFetcher:Lorg/spongycastle/cert/dane/DANEEntryFetcherFactory;


# direct methods
.method public constructor <init>(Lorg/spongycastle/cert/dane/DANEEntryFetcherFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/cert/dane/DANEEntryStoreBuilder;->daneEntryFetcher:Lorg/spongycastle/cert/dane/DANEEntryFetcherFactory;

    return-void
.end method


# virtual methods
.method public build(Ljava/lang/String;)Lorg/spongycastle/cert/dane/DANEEntryStore;
    .locals 1

    new-instance v0, Lorg/spongycastle/cert/dane/DANEEntryStore;

    iget-object p0, p0, Lorg/spongycastle/cert/dane/DANEEntryStoreBuilder;->daneEntryFetcher:Lorg/spongycastle/cert/dane/DANEEntryFetcherFactory;

    invoke-interface {p0, p1}, Lorg/spongycastle/cert/dane/DANEEntryFetcherFactory;->build(Ljava/lang/String;)Lorg/spongycastle/cert/dane/DANEEntryFetcher;

    move-result-object p0

    invoke-interface {p0}, Lorg/spongycastle/cert/dane/DANEEntryFetcher;->getEntries()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/cert/dane/DANEEntryStore;-><init>(Ljava/util/List;)V

    return-object v0
.end method
