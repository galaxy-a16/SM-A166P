.class public Lcom/android/server/os/BugreportManagerServiceImpl$Injector;
.super Ljava/lang/Object;
.source "BugreportManagerServiceImpl.java"


# instance fields
.field public mAllowlistedPackages:Landroid/util/ArraySet;

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/ArraySet;)V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    .line 159
    iput-object p2, p0, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mAllowlistedPackages:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public getAllowlistedPackages()Landroid/util/ArraySet;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mAllowlistedPackages:Landroid/util/ArraySet;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$Injector;->mContext:Landroid/content/Context;

    return-object p0
.end method
