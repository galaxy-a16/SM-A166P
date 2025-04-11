.class public Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$Injector;
.super Ljava/lang/Object;
.source "CloudConfigurationManagerService.java"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .locals 1

    .line 125
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object p0, p0, Lcom/android/server/enterprise/scpm/CloudConfigurationManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
