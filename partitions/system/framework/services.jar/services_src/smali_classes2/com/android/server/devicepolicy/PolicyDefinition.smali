.class public final Lcom/android/server/devicepolicy/PolicyDefinition;
.super Ljava/lang/Object;
.source "PolicyDefinition.java"


# static fields
.field public static AUTO_TIMEZONE:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final FALSE_MORE_RESTRICTIVE:Lcom/android/server/devicepolicy/MostRestrictive;

.field public static GENERIC_ACCOUNT_MANAGEMENT_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static GENERIC_APPLICATION_HIDDEN:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static GENERIC_APPLICATION_RESTRICTIONS:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static GENERIC_PACKAGE_UNINSTALL_BLOCKED:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final GENERIC_PERMISSION_GRANT:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static GENERIC_PERSISTENT_PREFERRED_ACTIVITY:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static KEYGUARD_DISABLED_FEATURES:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static LOCK_TASK:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static PERMITTED_INPUT_METHODS:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static PERSONAL_APPS_SUSPENDED:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final POLICY_DEFINITIONS:Ljava/util/Map;

.field public static RESET_PASSWORD_TOKEN:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static SCREEN_CAPTURE_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final TRUE_MORE_RESTRICTIVE:Lcom/android/server/devicepolicy/MostRestrictive;

.field public static USER_CONTROLLED_DISABLED_PACKAGES:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static USER_RESTRICTION_FLAGS:Ljava/util/Map;


# instance fields
.field public final mPolicyEnforcerCallback:Lcom/android/internal/util/function/QuadFunction;

.field public final mPolicyFlags:I

.field public final mPolicyKey:Landroid/app/admin/PolicyKey;

.field public final mPolicySerializer:Lcom/android/server/devicepolicy/PolicySerializer;

.field public final mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;


# direct methods
.method public static synthetic $r8$lambda$4KX02E8Ut-Z9rBLQ1w9AAn-s8lg(Ljava/util/Set;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/devicepolicy/PolicyDefinition;->lambda$static$2(Ljava/util/Set;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZbMnmXlKsRO9JHXchYFLs1dk8qo(Ljava/lang/Integer;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/devicepolicy/PolicyDefinition;->lambda$static$5(Ljava/lang/Integer;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$b1_VYehg2hKBs7n9RDkmoa2C4yw(Ljava/lang/Boolean;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/devicepolicy/PolicyDefinition;->lambda$static$0(Ljava/lang/Boolean;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cTo9GElFqpAW0Gh6D1VY02PxGCY(Ljava/util/Set;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/devicepolicy/PolicyDefinition;->lambda$static$7(Ljava/util/Set;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iz80HsuxwC9RHbEKZser5K82DWo(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/devicepolicy/PolicyDefinition;->lambda$static$3(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$o2aGqWf4SwkTgcuC8IA2GIFP9Qw(Ljava/lang/Boolean;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/devicepolicy/PolicyDefinition;->lambda$static$6(Ljava/lang/Boolean;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pXnoJ-3LkQxyXkW2Cs0-8uN1N1g(Ljava/lang/Long;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/devicepolicy/PolicyDefinition;->lambda$static$4(Ljava/lang/Long;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yFAXi4EMkYHCtiFY2K_oHeJEPp4(Landroid/app/admin/LockTaskPolicy;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/devicepolicy/PolicyDefinition;->lambda$static$1(Landroid/app/admin/LockTaskPolicy;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .locals 34

    .line 85
    new-instance v0, Lcom/android/server/devicepolicy/MostRestrictive;

    new-instance v1, Landroid/app/admin/BooleanPolicyValue;

    const/4 v2, 0x0

    .line 369
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 85
    invoke-direct {v1, v2}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    new-instance v4, Landroid/app/admin/BooleanPolicyValue;

    const/4 v5, 0x1

    .line 372
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 85
    invoke-direct {v4, v5}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    .line 86
    invoke-static {v1, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/MostRestrictive;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->FALSE_MORE_RESTRICTIVE:Lcom/android/server/devicepolicy/MostRestrictive;

    .line 88
    new-instance v0, Lcom/android/server/devicepolicy/MostRestrictive;

    new-instance v1, Landroid/app/admin/BooleanPolicyValue;

    invoke-direct {v1, v5}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    new-instance v4, Landroid/app/admin/BooleanPolicyValue;

    invoke-direct {v4, v2}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    .line 89
    invoke-static {v1, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/MostRestrictive;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->TRUE_MORE_RESTRICTIVE:Lcom/android/server/devicepolicy/MostRestrictive;

    .line 91
    new-instance v1, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v8, Landroid/app/admin/NoArgsPolicyKey;

    const-string v4, "autoTimezone"

    invoke-direct {v8, v4}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x1

    new-instance v11, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    invoke-direct {v11}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>()V

    new-instance v12, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct {v12}, Lcom/android/server/devicepolicy/BooleanPolicySerializer;-><init>()V

    move-object v7, v1

    move-object v9, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->AUTO_TIMEZONE:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 103
    new-instance v1, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v14, Landroid/app/admin/PackagePermissionPolicyKey;

    const-string/jumbo v12, "permissionGrant"

    invoke-direct {v14, v12}, Landroid/app/admin/PackagePermissionPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v15, Lcom/android/server/devicepolicy/MostRestrictive;

    new-instance v7, Landroid/app/admin/IntegerPolicyValue;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    new-instance v8, Landroid/app/admin/IntegerPolicyValue;

    invoke-direct {v8, v5}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    new-instance v5, Landroid/app/admin/IntegerPolicyValue;

    invoke-direct {v5, v2}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    .line 110
    invoke-static {v7, v8, v5}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v15, v2}, Lcom/android/server/devicepolicy/MostRestrictive;-><init>(Ljava/util/List;)V

    const/16 v16, 0x2

    new-instance v17, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda5;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda5;-><init>()V

    new-instance v18, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    invoke-direct/range {v18 .. v18}, Lcom/android/server/devicepolicy/IntegerPolicySerializer;-><init>()V

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PERMISSION_GRANT:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 137
    new-instance v2, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v5, Landroid/app/admin/NoArgsPolicyKey;

    const-string v13, "lockTask"

    invoke-direct {v5, v13}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/android/server/devicepolicy/TopPriority;

    const-string v8, "android.app.role.SYSTEM_FINANCED_DEVICE_CONTROLLER"

    .line 140
    invoke-static {v8}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoleAuthorityOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "enterprise"

    .line 139
    invoke-static {v9, v10}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/android/server/devicepolicy/TopPriority;-><init>(Ljava/util/List;)V

    const/16 v22, 0x2

    new-instance v23, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda6;

    invoke-direct/range {v23 .. v23}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda6;-><init>()V

    new-instance v24, Lcom/android/server/devicepolicy/LockTaskPolicySerializer;

    invoke-direct/range {v24 .. v24}, Lcom/android/server/devicepolicy/LockTaskPolicySerializer;-><init>()V

    move-object/from16 v19, v2

    move-object/from16 v20, v5

    move-object/from16 v21, v7

    invoke-direct/range {v19 .. v24}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->LOCK_TASK:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 147
    new-instance v2, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v5, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v14, "userControlDisabledPackages"

    invoke-direct {v5, v14}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/android/server/devicepolicy/StringSetUnion;

    invoke-direct {v7}, Lcom/android/server/devicepolicy/StringSetUnion;-><init>()V

    new-instance v9, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda7;

    invoke-direct {v9}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda7;-><init>()V

    new-instance v11, Lcom/android/server/devicepolicy/StringSetPolicySerializer;

    invoke-direct {v11}, Lcom/android/server/devicepolicy/StringSetPolicySerializer;-><init>()V

    invoke-direct {v2, v5, v7, v9, v11}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;Lcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_CONTROLLED_DISABLED_PACKAGES:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 159
    new-instance v2, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v5, Landroid/app/admin/IntentFilterPolicyKey;

    const-string/jumbo v11, "persistentPreferredActivity"

    invoke-direct {v5, v11}, Landroid/app/admin/IntentFilterPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/android/server/devicepolicy/TopPriority;

    .line 164
    invoke-static {v8}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoleAuthorityOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 163
    invoke-static {v8, v10}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/server/devicepolicy/TopPriority;-><init>(Ljava/util/List;)V

    const/16 v18, 0x2

    new-instance v19, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda8;

    invoke-direct/range {v19 .. v19}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda8;-><init>()V

    new-instance v20, Lcom/android/server/devicepolicy/ComponentNamePolicySerializer;

    invoke-direct/range {v20 .. v20}, Lcom/android/server/devicepolicy/ComponentNamePolicySerializer;-><init>()V

    move-object v15, v2

    move-object/from16 v16, v5

    move-object/from16 v17, v7

    invoke-direct/range {v15 .. v20}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PERSISTENT_PREFERRED_ACTIVITY:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 188
    new-instance v2, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v8, Landroid/app/admin/PackagePolicyKey;

    const-string/jumbo v5, "packageUninstallBlocked"

    invoke-direct {v8, v5}, Landroid/app/admin/PackagePolicyKey;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x2

    new-instance v15, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda9;

    invoke-direct {v15}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda9;-><init>()V

    new-instance v16, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct/range {v16 .. v16}, Lcom/android/server/devicepolicy/BooleanPolicySerializer;-><init>()V

    move-object v7, v2

    move-object v9, v0

    move-object/from16 v25, v11

    move-object v11, v15

    move-object v15, v12

    move-object/from16 v12, v16

    invoke-direct/range {v7 .. v12}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PACKAGE_UNINSTALL_BLOCKED:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 214
    new-instance v2, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v7, Landroid/app/admin/PackagePolicyKey;

    const-string v12, "applicationRestrictions"

    invoke-direct {v7, v12}, Landroid/app/admin/PackagePolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v19, Lcom/android/server/devicepolicy/MostRecent;

    invoke-direct/range {v19 .. v19}, Lcom/android/server/devicepolicy/MostRecent;-><init>()V

    const/16 v20, 0xa

    new-instance v21, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda10;

    invoke-direct/range {v21 .. v21}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda10;-><init>()V

    new-instance v22, Lcom/android/server/devicepolicy/BundlePolicySerializer;

    invoke-direct/range {v22 .. v22}, Lcom/android/server/devicepolicy/BundlePolicySerializer;-><init>()V

    move-object/from16 v17, v2

    move-object/from16 v18, v7

    invoke-direct/range {v17 .. v22}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_APPLICATION_RESTRICTIONS:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 241
    new-instance v2, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v7, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v11, "resetPasswordToken"

    invoke-direct {v7, v11}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v28, Lcom/android/server/devicepolicy/MostRecent;

    invoke-direct/range {v28 .. v28}, Lcom/android/server/devicepolicy/MostRecent;-><init>()V

    const/16 v29, 0xa

    new-instance v30, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda11;

    invoke-direct/range {v30 .. v30}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda11;-><init>()V

    new-instance v31, Lcom/android/server/devicepolicy/LongPolicySerializer;

    invoke-direct/range {v31 .. v31}, Lcom/android/server/devicepolicy/LongPolicySerializer;-><init>()V

    move-object/from16 v26, v2

    move-object/from16 v27, v7

    invoke-direct/range {v26 .. v31}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->RESET_PASSWORD_TOKEN:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 251
    new-instance v2, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v7, Landroid/app/admin/NoArgsPolicyKey;

    const-string v10, "keyguardDisabledFeatures"

    invoke-direct {v7, v10}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v18, Lcom/android/server/devicepolicy/FlagUnion;

    invoke-direct/range {v18 .. v18}, Lcom/android/server/devicepolicy/FlagUnion;-><init>()V

    const/16 v19, 0x2

    new-instance v20, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda12;

    invoke-direct/range {v20 .. v20}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda12;-><init>()V

    new-instance v21, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    invoke-direct/range {v21 .. v21}, Lcom/android/server/devicepolicy/IntegerPolicySerializer;-><init>()V

    move-object/from16 v16, v2

    move-object/from16 v17, v7

    invoke-direct/range {v16 .. v21}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->KEYGUARD_DISABLED_FEATURES:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 262
    new-instance v2, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v8, Landroid/app/admin/PackagePolicyKey;

    const-string v9, "applicationHidden"

    invoke-direct {v8, v9}, Landroid/app/admin/PackagePolicyKey;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x6

    new-instance v17, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda13;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda13;-><init>()V

    new-instance v18, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct/range {v18 .. v18}, Lcom/android/server/devicepolicy/BooleanPolicySerializer;-><init>()V

    move-object v7, v2

    move-object/from16 v19, v6

    move-object v6, v9

    move-object v9, v0

    move-object/from16 v20, v3

    move-object v3, v10

    move/from16 v10, v16

    move-object/from16 v32, v11

    move-object/from16 v11, v17

    move-object/from16 v16, v6

    move-object v6, v12

    move-object/from16 v12, v18

    invoke-direct/range {v7 .. v12}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_APPLICATION_HIDDEN:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 290
    new-instance v2, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v8, Landroid/app/admin/AccountTypePolicyKey;

    const-string v12, "accountManagementDisabled"

    invoke-direct {v8, v12}, Landroid/app/admin/AccountTypePolicyKey;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x6

    new-instance v11, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda1;

    invoke-direct {v11}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda1;-><init>()V

    new-instance v17, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/devicepolicy/BooleanPolicySerializer;-><init>()V

    move-object v7, v2

    move-object/from16 v33, v12

    move-object/from16 v12, v17

    invoke-direct/range {v7 .. v12}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_ACCOUNT_MANAGEMENT_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 313
    new-instance v2, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v7, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v12, "permittedInputMethods"

    invoke-direct {v7, v12}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v28, Lcom/android/server/devicepolicy/MostRecent;

    invoke-direct/range {v28 .. v28}, Lcom/android/server/devicepolicy/MostRecent;-><init>()V

    const/16 v29, 0x6

    new-instance v30, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda2;

    invoke-direct/range {v30 .. v30}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda2;-><init>()V

    new-instance v31, Lcom/android/server/devicepolicy/StringSetPolicySerializer;

    invoke-direct/range {v31 .. v31}, Lcom/android/server/devicepolicy/StringSetPolicySerializer;-><init>()V

    move-object/from16 v26, v2

    move-object/from16 v27, v7

    invoke-direct/range {v26 .. v31}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->PERMITTED_INPUT_METHODS:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 321
    new-instance v2, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v8, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v11, "screenCaptureDisabled"

    invoke-direct {v8, v11}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x4

    new-instance v17, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda3;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda3;-><init>()V

    new-instance v18, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct/range {v18 .. v18}, Lcom/android/server/devicepolicy/BooleanPolicySerializer;-><init>()V

    move-object v7, v2

    move-object v0, v11

    move-object/from16 v11, v17

    move-object/from16 v17, v0

    move-object v0, v12

    move-object/from16 v12, v18

    invoke-direct/range {v7 .. v12}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->SCREEN_CAPTURE_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 328
    new-instance v2, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v7, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v8, "personalAppsSuspended"

    invoke-direct {v7, v8}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v28, Lcom/android/server/devicepolicy/MostRecent;

    invoke-direct/range {v28 .. v28}, Lcom/android/server/devicepolicy/MostRecent;-><init>()V

    new-instance v30, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda4;

    invoke-direct/range {v30 .. v30}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda4;-><init>()V

    new-instance v31, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct/range {v31 .. v31}, Lcom/android/server/devicepolicy/BooleanPolicySerializer;-><init>()V

    move-object/from16 v26, v2

    move-object/from16 v27, v7

    invoke-direct/range {v26 .. v31}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->PERSONAL_APPS_SUSPENDED:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 336
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    .line 337
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    .line 341
    sget-object v7, Lcom/android/server/devicepolicy/PolicyDefinition;->AUTO_TIMEZONE:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-interface {v2, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-interface {v2, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->LOCK_TASK:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-interface {v2, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_CONTROLLED_DISABLED_PACKAGES:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-interface {v2, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PERSISTENT_PREFERRED_ACTIVITY:Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object/from16 v4, v25

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PACKAGE_UNINSTALL_BLOCKED:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_APPLICATION_RESTRICTIONS:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-interface {v2, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->RESET_PASSWORD_TOKEN:Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object/from16 v4, v32

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->KEYGUARD_DISABLED_FEATURES:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_APPLICATION_HIDDEN:Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object/from16 v3, v16

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_ACCOUNT_MANAGEMENT_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object/from16 v3, v33

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->PERMITTED_INPUT_METHODS:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->SCREEN_CAPTURE_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object/from16 v1, v17

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->PERSONAL_APPS_SUSPENDED:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-interface {v2, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_modify_accounts"

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_config_wifi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_change_wifi_state"

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_wifi_tethering"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_grant_admin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_sharing_admin_configured_wifi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_wifi_direct"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_add_wifi_config"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_config_locale"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_install_apps"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_uninstall_apps"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_share_location"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_airplane_mode"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_config_brightness"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_ambient_display"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_config_screen_timeout"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_install_unknown_sources"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_install_unknown_sources_globally"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_config_bluetooth"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_bluetooth"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_bluetooth_sharing"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_usb_file_transfer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_config_credentials"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_remove_user"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_remove_managed_profile"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_debugging_features"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_config_vpn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_config_location"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_config_date_time"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_config_tethering"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_network_reset"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_factory_reset"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_add_user"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_add_managed_profile"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_add_clone_profile"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string v1, "ensure_verify_apps"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_config_cell_broadcasts"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_config_mobile_networks"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_control_apps"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_physical_media"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_unmute_microphone"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_adjust_volume"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_outgoing_calls"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_sms"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_fun"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_create_windows"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_system_error_dialogs"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_cross_profile_copy_paste"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_outgoing_beam"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_wallpaper"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_set_wallpaper"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_safe_boot"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_record_audio"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_run_in_background"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_camera"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string v1, "disallow_unmute_device"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_data_roaming"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_set_user_icon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_oem_unlock"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_unified_password"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string v1, "allow_parent_profile_app_linking"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_autofill"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_content_capture"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_content_suggestions"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_user_switch"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_sharing_into_profile"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_printing"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string v1, "disallow_config_private_dns"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string v1, "disallow_microphone_toggle"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string v1, "disallow_camera_toggle"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string v1, "disallow_biometric"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string v1, "disallow_config_default_apps"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_cellular_2g"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    const-string/jumbo v1, "no_ultra_wideband_radio"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 469
    sget-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/devicepolicy/PolicyDefinition;->createAndAddUserRestrictionPolicyDefinition(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V
    .locals 0

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    iput-object p1, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    .line 586
    iput-object p2, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    .line 587
    iput p3, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    .line 588
    iput-object p4, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyEnforcerCallback:Lcom/android/internal/util/function/QuadFunction;

    .line 589
    iput-object p5, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicySerializer:Lcom/android/server/devicepolicy/PolicySerializer;

    .line 591
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyDefinition;->isNonCoexistablePolicy()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyDefinition;->isLocalOnlyPolicy()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 592
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Non-coexistable global policies not supported,please add support."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;Lcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 572
    invoke-direct/range {v0 .. v5}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    return-void
.end method

.method public static ACCOUNT_MANAGEMENT_DISABLED(Ljava/lang/String;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 3

    if-nez p0, :cond_0

    .line 306
    sget-object p0, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_ACCOUNT_MANAGEMENT_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

    return-object p0

    .line 308
    :cond_0
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_ACCOUNT_MANAGEMENT_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v1, Landroid/app/admin/AccountTypePolicyKey;

    const-string v2, "accountManagementDisabled"

    invoke-direct {v1, v2, p0}, Landroid/app/admin/AccountTypePolicyKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/PolicyDefinition;->createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object p0

    return-object p0
.end method

.method public static APPLICATION_HIDDEN(Ljava/lang/String;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 3

    if-nez p0, :cond_0

    .line 280
    sget-object p0, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_APPLICATION_HIDDEN:Lcom/android/server/devicepolicy/PolicyDefinition;

    return-object p0

    .line 282
    :cond_0
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_APPLICATION_HIDDEN:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v1, Landroid/app/admin/PackagePolicyKey;

    const-string v2, "applicationHidden"

    invoke-direct {v1, v2, p0}, Landroid/app/admin/PackagePolicyKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/PolicyDefinition;->createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object p0

    return-object p0
.end method

.method public static APPLICATION_RESTRICTIONS(Ljava/lang/String;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 3

    if-nez p0, :cond_0

    .line 234
    sget-object p0, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_APPLICATION_RESTRICTIONS:Lcom/android/server/devicepolicy/PolicyDefinition;

    return-object p0

    .line 236
    :cond_0
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_APPLICATION_RESTRICTIONS:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v1, Landroid/app/admin/PackagePolicyKey;

    const-string v2, "applicationRestrictions"

    invoke-direct {v1, v2, p0}, Landroid/app/admin/PackagePolicyKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/PolicyDefinition;->createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object p0

    return-object p0
.end method

.method public static PACKAGE_UNINSTALL_BLOCKED(Ljava/lang/String;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 3

    if-nez p0, :cond_0

    .line 204
    sget-object p0, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PACKAGE_UNINSTALL_BLOCKED:Lcom/android/server/devicepolicy/PolicyDefinition;

    return-object p0

    .line 206
    :cond_0
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PACKAGE_UNINSTALL_BLOCKED:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v1, Landroid/app/admin/PackagePolicyKey;

    const-string/jumbo v2, "packageUninstallBlocked"

    invoke-direct {v1, v2, p0}, Landroid/app/admin/PackagePolicyKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/PolicyDefinition;->createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object p0

    return-object p0
.end method

.method public static PERMISSION_GRANT(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 3

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PERMISSION_GRANT:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v1, Landroid/app/admin/PackagePermissionPolicyKey;

    const-string/jumbo v2, "permissionGrant"

    invoke-direct {v1, v2, p0, p1}, Landroid/app/admin/PackagePermissionPolicyKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/PolicyDefinition;->createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object p0

    return-object p0

    .line 128
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PERMISSION_GRANT:Lcom/android/server/devicepolicy/PolicyDefinition;

    return-object p0
.end method

.method public static PERSISTENT_PREFERRED_ACTIVITY(Landroid/content/IntentFilter;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 3

    if-nez p0, :cond_0

    .line 177
    sget-object p0, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PERSISTENT_PREFERRED_ACTIVITY:Lcom/android/server/devicepolicy/PolicyDefinition;

    return-object p0

    .line 179
    :cond_0
    sget-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PERSISTENT_PREFERRED_ACTIVITY:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v1, Landroid/app/admin/IntentFilterPolicyKey;

    const-string/jumbo v2, "persistentPreferredActivity"

    invoke-direct {v1, v2, p0}, Landroid/app/admin/IntentFilterPolicyKey;-><init>(Ljava/lang/String;Landroid/content/IntentFilter;)V

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/PolicyDefinition;->createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object p0

    return-object p0
.end method

.method public static createAndAddUserRestrictionPolicyDefinition(Ljava/lang/String;I)V
    .locals 8

    .line 550
    invoke-static {p0}, Landroid/app/admin/DevicePolicyIdentifiers;->getIdentifierForUserRestriction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 551
    new-instance v7, Landroid/app/admin/UserRestrictionPolicyKey;

    invoke-direct {v7, v0, p0}, Landroid/app/admin/UserRestrictionPolicyKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    or-int/lit8 v4, p1, 0x14

    .line 553
    new-instance p0, Lcom/android/server/devicepolicy/PolicyDefinition;

    sget-object v3, Lcom/android/server/devicepolicy/PolicyDefinition;->TRUE_MORE_RESTRICTIVE:Lcom/android/server/devicepolicy/MostRestrictive;

    new-instance v5, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda14;

    invoke-direct {v5}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda14;-><init>()V

    new-instance v6, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct {v6}, Lcom/android/server/devicepolicy/BooleanPolicySerializer;-><init>()V

    move-object v1, p0

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    .line 559
    sget-object p1, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    invoke-virtual {v7}, Landroid/app/admin/UserRestrictionPolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getPolicyDefinitionForUserRestriction(Ljava/lang/String;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 3

    .line 488
    invoke-static {p0}, Landroid/app/admin/DevicePolicyIdentifiers;->getIdentifierForUserRestriction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 490
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/devicepolicy/PolicyDefinition;

    return-object p0

    .line 491
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported user restriction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic lambda$static$0(Ljava/lang/Boolean;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/lang/Boolean;
    .locals 0

    .line 97
    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->setAutoTimezoneEnabled(Ljava/lang/Boolean;Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$static$1(Landroid/app/admin/LockTaskPolicy;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/lang/Boolean;
    .locals 0

    .line 144
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->setLockTask(Landroid/app/admin/LockTaskPolicy;Landroid/content/Context;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$static$2(Ljava/util/Set;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/lang/Boolean;
    .locals 0

    .line 153
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->setUserControlDisabledPackages(Ljava/util/Set;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$static$3(Landroid/os/Bundle;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/lang/Boolean;
    .locals 0

    .line 225
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic lambda$static$4(Ljava/lang/Long;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/lang/Boolean;
    .locals 0

    .line 248
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic lambda$static$5(Ljava/lang/Integer;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/lang/Boolean;
    .locals 0

    .line 256
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic lambda$static$6(Ljava/lang/Boolean;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/lang/Boolean;
    .locals 0

    .line 297
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic lambda$static$7(Ljava/util/Set;Landroid/content/Context;Ljava/lang/Integer;Landroid/app/admin/PolicyKey;)Ljava/lang/Boolean;
    .locals 0

    .line 317
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 4

    .line 607
    invoke-static {p0}, Lcom/android/server/devicepolicy/PolicyDefinition;->readPolicyKeyFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyKey;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "PolicyDefinition"

    if-nez p0, :cond_0

    const-string p0, "Error parsing PolicyDefinition, PolicyKey is null."

    .line 609
    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 612
    :cond_0
    sget-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    .line 613
    invoke-virtual {p0}, Landroid/app/admin/PolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/PolicyDefinition;

    if-nez v2, :cond_1

    .line 615
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown generic policy key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 618
    :cond_1
    invoke-virtual {v2, p0}, Lcom/android/server/devicepolicy/PolicyDefinition;->createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object p0

    return-object p0
.end method

.method public static readPolicyKeyFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyKey;
    .locals 5

    .line 625
    invoke-static {p0}, Landroid/app/admin/PolicyKey;->readGenericPolicyKeyFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyKey;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "PolicyDefinition"

    if-nez v0, :cond_0

    const-string p0, "Error parsing PolicyKey, GenericPolicyKey is null"

    .line 627
    invoke-static {v2, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 630
    :cond_0
    sget-object v3, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    .line 632
    invoke-virtual {v0}, Landroid/app/admin/PolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    .line 631
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/PolicyDefinition;

    if-nez v3, :cond_1

    .line 634
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error parsing PolicyKey, Unknown generic policy key: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 637
    :cond_1
    iget-object v0, v3, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    invoke-virtual {v0, p0}, Landroid/app/admin/PolicyKey;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyKey;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 7

    .line 482
    new-instance v6, Lcom/android/server/devicepolicy/PolicyDefinition;

    iget-object v2, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    iget v3, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    iget-object v4, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyEnforcerCallback:Lcom/android/internal/util/function/QuadFunction;

    iget-object v5, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicySerializer:Lcom/android/server/devicepolicy/PolicySerializer;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    return-object v6
.end method

.method public enforcePolicy(Ljava/lang/Object;Landroid/content/Context;I)Z
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyEnforcerCallback:Lcom/android/internal/util/function/QuadFunction;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    invoke-interface {v0, p1, p2, p3, p0}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getPolicyKey()Landroid/app/admin/PolicyKey;
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    return-object p0
.end method

.method public getResolutionMechanism()Lcom/android/server/devicepolicy/ResolutionMechanism;
    .locals 0

    .line 504
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    return-object p0
.end method

.method public isGlobalOnlyPolicy()Z
    .locals 1

    .line 510
    iget p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInheritable()Z
    .locals 0

    .line 524
    iget p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLocalOnlyPolicy()Z
    .locals 0

    .line 517
    iget p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNonCoexistablePolicy()Z
    .locals 0

    .line 532
    iget p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUserRestrictionPolicy()Z
    .locals 0

    .line 536
    iget p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public readPolicyValueFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyValue;
    .locals 0

    .line 647
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicySerializer:Lcom/android/server/devicepolicy/PolicySerializer;

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/PolicySerializer;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyValue;

    move-result-object p0

    return-object p0
.end method

.method public resolvePolicy(Ljava/util/LinkedHashMap;)Landroid/app/admin/PolicyValue;
    .locals 0

    .line 541
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/ResolutionMechanism;->resolve(Ljava/util/LinkedHashMap;)Landroid/app/admin/PolicyValue;

    move-result-object p0

    return-object p0
.end method

.method public savePolicyValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/Object;)V
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicySerializer:Lcom/android/server/devicepolicy/PolicySerializer;

    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/devicepolicy/PolicySerializer;->saveToXml(Landroid/app/admin/PolicyKey;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/Object;)V

    return-void
.end method

.method public saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 0

    .line 600
    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    invoke-virtual {p0, p1}, Landroid/app/admin/PolicyKey;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PolicyDefinition{ mPolicyKey= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mResolutionMechanism= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPolicyFlags= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
