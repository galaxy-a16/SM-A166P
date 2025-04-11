.class public Lorg/spongycastle/cert/dane/DANEEntrySelector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/spongycastle/util/Selector;


# instance fields
.field private final domainName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/cert/dane/DANEEntrySelector;->domainName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getDomainName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/cert/dane/DANEEntrySelector;->domainName:Ljava/lang/String;

    return-object p0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lorg/spongycastle/cert/dane/DANEEntry;

    invoke-virtual {p1}, Lorg/spongycastle/cert/dane/DANEEntry;->getDomainName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/spongycastle/cert/dane/DANEEntrySelector;->domainName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
