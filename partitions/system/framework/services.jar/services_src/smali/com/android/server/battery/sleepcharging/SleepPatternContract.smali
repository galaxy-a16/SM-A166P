.class public abstract Lcom/android/server/battery/sleepcharging/SleepPatternContract;
.super Ljava/lang/Object;
.source "SleepPatternContract.java"


# static fields
.field public static final AUTHORITY_URI:Landroid/net/Uri;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetAUTHORITY_URI()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/server/battery/sleepcharging/SleepPatternContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.rubin.persona.sleeppattern"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/battery/sleepcharging/SleepPatternContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method
