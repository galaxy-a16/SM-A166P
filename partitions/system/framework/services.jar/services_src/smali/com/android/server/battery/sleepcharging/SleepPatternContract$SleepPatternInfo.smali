.class public abstract Lcom/android/server/battery/sleepcharging/SleepPatternContract$SleepPatternInfo;
.super Ljava/lang/Object;
.source "SleepPatternContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 93
    invoke-static {}, Lcom/android/server/battery/sleepcharging/SleepPatternContract;->-$$Nest$sfgetAUTHORITY_URI()Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "sleep_pattern_info"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/battery/sleepcharging/SleepPatternContract$SleepPatternInfo;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
