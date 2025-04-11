.class public abstract Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;
.super Ljava/lang/Object;
.source "ApnSettingsPolicy.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final PREFERAPN_URI:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "content://telephony/carriers"

    .line 857
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://telephony/carriers/preferapn"

    .line 858
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method
