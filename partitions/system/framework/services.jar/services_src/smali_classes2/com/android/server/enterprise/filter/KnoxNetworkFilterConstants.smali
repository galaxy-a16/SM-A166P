.class public abstract Lcom/android/server/enterprise/filter/KnoxNetworkFilterConstants;
.super Ljava/lang/Object;
.source "KnoxNetworkFilterConstants.java"


# static fields
.field public static final NW_FILTER_EXEMPT_LIST:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "com.samsung.android.knox.app.networkfilter"

    .line 67
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/filter/KnoxNetworkFilterConstants;->NW_FILTER_EXEMPT_LIST:[Ljava/lang/String;

    return-void
.end method
