.class public abstract Lcom/android/server/notification/sec/runestone/RunestoneStateContract;
.super Ljava/lang/Object;
.source "RunestoneStateContract.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ENABLE_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.samsung.android.rubin.state"

    .line 10
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/sec/runestone/RunestoneStateContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "enabled"

    .line 11
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/sec/runestone/RunestoneStateContract;->ENABLE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
