.class public Lcom/android/server/wm/PackageFeatureManagerService$ScpmConsumerInfo;
.super Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;
.source "PackageFeatureManagerService.java"


# static fields
.field public static final VERSION:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/PackageFeatureManagerService$ScpmConsumerInfo;->VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "hz6wdikdtw"

    sget-object v1, Lcom/android/server/wm/PackageFeatureManagerService$ScpmConsumerInfo;->VERSION:Ljava/lang/String;

    const-string v2, "android"

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/samsung/android/server/corescpm/ScpmController$ConsumerInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/PackageFeatureManagerService$ScpmConsumerInfo-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/PackageFeatureManagerService$ScpmConsumerInfo;-><init>()V

    return-void
.end method
