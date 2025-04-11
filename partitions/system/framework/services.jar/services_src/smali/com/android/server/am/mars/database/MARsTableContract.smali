.class public abstract Lcom/android/server/am/mars/database/MARsTableContract;
.super Ljava/lang/Object;
.source "MARsTableContract.java"


# static fields
.field public static final MARS_ADJUST_RESTRICTION:Landroid/net/Uri;

.field public static final MARS_ADJUST_TARGET_CURRENT_IMPORTANT:Landroid/net/Uri;

.field public static final MARS_ADJUST_TARGET_EXCLUDE_PACKAGE:Landroid/net/Uri;

.field public static final MARS_POLICY_AUTORUN_PARAMETER_DEFINITION:Landroid/net/Uri;

.field public static final MARS_POLICY_DEFINITION:Landroid/net/Uri;

.field public static final MARS_SETTINGS_URI:Landroid/net/Uri;

.field public static final SCPM_AUTHORITY_URI:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.sm.mars/MARs_Policy"

    .line 8
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_POLICY_DEFINITION:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.sm.mars/MARs_AutoRunParameter"

    .line 9
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_POLICY_AUTORUN_PARAMETER_DEFINITION:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.sm.mars/MARs_ExcludeTarget"

    .line 10
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_ADJUST_TARGET_EXCLUDE_PACKAGE:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.sm.mars/MARs_IsCurrentImportant"

    .line 11
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_ADJUST_TARGET_CURRENT_IMPORTANT:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.sm.mars/MARs_AdjustRestriction"

    .line 12
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_ADJUST_RESTRICTION:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.sm.mars/MARs_Settings"

    .line 13
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/MARsTableContract;->MARS_SETTINGS_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.sm.dcapi"

    .line 59
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/MARsTableContract;->SCPM_AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method
