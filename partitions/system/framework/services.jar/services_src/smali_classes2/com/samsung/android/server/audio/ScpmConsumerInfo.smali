.class public interface abstract Lcom/samsung/android/server/audio/ScpmConsumerInfo;
.super Ljava/lang/Object;
.source "SoundAppPolicyManager.java"


# static fields
.field public static final VERSION:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/audio/ScpmConsumerInfo;->VERSION:Ljava/lang/String;

    return-void
.end method
