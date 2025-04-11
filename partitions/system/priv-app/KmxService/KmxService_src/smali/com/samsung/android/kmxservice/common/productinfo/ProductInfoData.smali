.class public Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mDivision:Ljava/lang/String;

.field public final mMarketingName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoData;->mMarketingName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoData;->mDivision:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDivision()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoData;->mDivision:Ljava/lang/String;

    return-object p0
.end method

.method public getMarketingName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/productinfo/ProductInfoData;->mMarketingName:Ljava/lang/String;

    return-object p0
.end method
