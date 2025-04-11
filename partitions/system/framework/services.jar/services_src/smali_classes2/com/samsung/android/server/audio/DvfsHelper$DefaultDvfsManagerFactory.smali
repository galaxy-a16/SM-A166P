.class public Lcom/samsung/android/server/audio/DvfsHelper$DefaultDvfsManagerFactory;
.super Ljava/lang/Object;
.source "DvfsHelper.java"

# interfaces
.implements Lcom/samsung/android/server/audio/DvfsHelper$DvfsManagerFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;
    .locals 0

    invoke-static {p1, p2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object p0

    return-object p0
.end method
