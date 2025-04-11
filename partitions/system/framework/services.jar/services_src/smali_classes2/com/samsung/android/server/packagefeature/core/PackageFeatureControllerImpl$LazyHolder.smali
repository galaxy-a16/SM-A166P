.class public abstract Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl$LazyHolder;
.super Ljava/lang/Object;
.source "PackageFeatureControllerImpl.java"


# static fields
.field public static final sController:Lcom/samsung/android/server/packagefeature/PackageFeatureController;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl-IA;)V

    sput-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl$LazyHolder;->sController:Lcom/samsung/android/server/packagefeature/PackageFeatureController;

    return-void
.end method
