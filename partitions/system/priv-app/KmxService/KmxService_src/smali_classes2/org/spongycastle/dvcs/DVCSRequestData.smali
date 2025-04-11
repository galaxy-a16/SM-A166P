.class public abstract Lorg/spongycastle/dvcs/DVCSRequestData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected data:Lorg/spongycastle/asn1/dvcs/Data;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/dvcs/Data;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/dvcs/DVCSRequestData;->data:Lorg/spongycastle/asn1/dvcs/Data;

    return-void
.end method


# virtual methods
.method public toASN1Structure()Lorg/spongycastle/asn1/dvcs/Data;
    .locals 0

    iget-object p0, p0, Lorg/spongycastle/dvcs/DVCSRequestData;->data:Lorg/spongycastle/asn1/dvcs/Data;

    return-object p0
.end method
