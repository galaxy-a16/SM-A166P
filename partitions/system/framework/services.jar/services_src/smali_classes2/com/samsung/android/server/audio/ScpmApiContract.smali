.class public interface abstract Lcom/samsung/android/server/audio/ScpmApiContract;
.super Ljava/lang/Object;
.source "SoundAppPolicyManager.java"


# static fields
.field public static final URI:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.scpm.policy/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/audio/ScpmApiContract;->URI:Landroid/net/Uri;

    return-void
.end method
