.class public Lcom/android/server/enterprise/content/SecContentProvider;
.super Landroid/content/ContentProvider;
.source "SecContentProvider.java"


# static fields
.field public static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 151
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "AdvancedRestrictionPolicy"

    const/4 v2, 0x1

    const-string v3, "com.sec.knox.provider"

    .line 152
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "AuditLog"

    const/4 v2, 0x2

    .line 153
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "BluetoothPolicy"

    const/4 v2, 0x3

    .line 154
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "BluetoothUtils"

    const/4 v2, 0x4

    .line 155
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "BrowserPolicy"

    const/4 v2, 0x5

    .line 156
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "CertificatePolicy"

    const/4 v2, 0x6

    .line 157
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "ContainerApplicationPolicy"

    const/4 v2, 0x7

    .line 158
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "DeviceSettingsPolicy"

    const/16 v2, 0x8

    .line 159
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "EnterpriseKnoxManagerPolicy"

    const/16 v2, 0x9

    .line 160
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "FirewallPolicy"

    const/16 v2, 0xa

    .line 161
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "KnoxConfigurationType"

    const/16 v2, 0xb

    .line 162
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "LocationPolicy"

    const/16 v2, 0xc

    .line 163
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "PasswordPolicy1"

    const/16 v2, 0xd

    .line 164
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "PasswordPolicy2"

    const/16 v2, 0xe

    .line 165
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "RestrictionPolicy1"

    const/16 v2, 0xf

    .line 166
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "RestrictionPolicy2"

    const/16 v2, 0x10

    .line 167
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "RestrictionPolicy3"

    const/16 v2, 0x11

    .line 168
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "RestrictionPolicy4"

    const/16 v2, 0x12

    .line 169
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "RoamingPolicy"

    const/16 v2, 0x13

    .line 170
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "SecurityPolicy"

    const/16 v2, 0x14

    .line 171
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "SmartCardEmailPolicy"

    const/16 v2, 0x15

    .line 172
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "SmartCardBrowserPolicy"

    const/16 v2, 0x16

    .line 173
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "DateTimePolicy"

    const/16 v2, 0x18

    .line 174
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "DlpPolicy"

    const/16 v2, 0x19

    .line 175
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "DomainFilterPolicy"

    const/16 v2, 0x1a

    .line 176
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "DexPolicy"

    const/16 v2, 0x1b

    .line 177
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "RestrictionPolicy"

    const/16 v2, 0x1e

    .line 179
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "ProfilePolicy"

    const/16 v2, 0x1f

    .line 180
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getArrayLength([Ljava/lang/String;)I
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 3260
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SecContentProvider"

    const-string v1, "getArrayLength() return 0 but some exception occurs with invalid request."

    .line 3262
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return p0
.end method

.method public final getCallerName(I)Ljava/lang/String;
    .locals 0

    .line 3270
    iget-object p0, p0, Lcom/android/server/enterprise/content/SecContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "fail to get caller name"

    :cond_0
    return-object p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 11

    .line 3126
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert(), uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SecContentProvider"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "called from "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/content/SecContentProvider;->getCallerName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3134
    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_4

    const/4 p1, 0x6

    const-string v1, "API"

    if-eq p0, p1, :cond_3

    const/16 p1, 0xa

    if-eq p0, p1, :cond_2

    const/16 p1, 0xe

    if-eq p0, p1, :cond_1

    const/16 p1, 0x14

    if-eq p0, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string/jumbo p0, "security_policy"

    .line 3238
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/security/SecurityPolicy;

    if-eqz p0, :cond_8

    .line 3240
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string/jumbo v1, "setDodBannerVisibleStatus"

    .line 3241
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 3243
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v0, "isVisible"

    .line 3244
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 3243
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->setDodBannerVisibleStatus(Lcom/samsung/android/knox/ContextInfo;Z)Z

    goto/16 :goto_0

    :cond_1
    const-string/jumbo p0, "password_policy"

    .line 3226
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/security/PasswordPolicy;

    if-eqz p0, :cond_8

    .line 3229
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string/jumbo v1, "setPwdChangeRequested"

    .line 3230
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 3231
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string v0, "flag"

    .line 3232
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 3231
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequested(Lcom/samsung/android/knox/ContextInfo;I)Z

    goto/16 :goto_0

    :cond_2
    const-string p0, "browser_policy"

    .line 3141
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/browser/BrowserPolicy;

    if-eqz p0, :cond_8

    .line 3144
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    const-string/jumbo v1, "saveURLBlockedReport"

    .line 3145
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 3146
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const-string/jumbo v0, "url"

    .line 3147
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3146
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->saveURLBlockedReportEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string p0, "certificate_policy"

    .line 3157
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    if-eqz p0, :cond_8

    .line 3160
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "fail"

    .line 3161
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "module"

    .line 3162
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_8

    const-string/jumbo v1, "notifyCertificateFailure"

    .line 3163
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz v0, :cond_8

    if-eqz p2, :cond_8

    .line 3166
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 3165
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_4
    const-string p0, "auditlog"

    .line 3178
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/server/enterprise/auditlog/AuditLogService;

    if-eqz v1, :cond_8

    const-string/jumbo p0, "redactedMessage"

    .line 3181
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p1

    const-string/jumbo v2, "message"

    const-string v3, "component"

    const-string/jumbo v4, "uid"

    const-string/jumbo v5, "outcome"

    const-string v6, "group"

    const-string/jumbo v7, "severity"

    const-string/jumbo v8, "userid"

    if-eqz p1, :cond_5

    .line 3182
    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3183
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 3184
    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3185
    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 3186
    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 3187
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 3188
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3189
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3190
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3191
    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    move-object v2, p1

    move v3, v0

    move v4, v6

    move v6, v7

    move-object v7, v9

    move-object v8, v10

    move-object v9, p0

    move v10, p2

    .line 3183
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->RedactedAuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 3192
    :cond_5
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3193
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 3194
    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3195
    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 3196
    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 3197
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 3198
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3199
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3200
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v2, p1

    move v3, v0

    move v4, v6

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, p0

    .line 3193
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->RedactedAuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3201
    :cond_6
    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 3202
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 3203
    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3204
    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3205
    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 3206
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 3207
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3208
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3209
    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    move-object v2, p0

    move v3, p1

    move v4, v0

    move-object v8, v9

    move v9, p2

    .line 3202
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 3211
    :cond_7
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 3212
    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3213
    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3214
    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 3215
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 3216
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3217
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v2, p0

    move v3, p1

    move v4, v0

    .line 3211
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 1

    .line 187
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider;->mContext:Landroid/content/Context;

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 194
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 195
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 207
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "query(), uri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v7, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " selection = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "SecContentProvider"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "called from "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/content/SecContentProvider;->getCallerName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {v7, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const-string v11, "isBluetoothLogEnabled"

    const/16 v12, 0x10

    const-string/jumbo v14, "restriction_policy"

    const/16 v16, 0x9

    const/16 v17, 0x7

    const/16 v18, 0x6

    const/16 v6, 0x8

    const/16 v19, 0x5

    const/4 v7, 0x4

    const/16 v20, -0x1

    const/4 v10, 0x2

    const/4 v13, 0x1

    const/4 v15, 0x0

    const/4 v9, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_7e

    :pswitch_1
    if-eqz v2, :cond_155

    const-string/jumbo v0, "profilepolicy"

    .line 3080
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/profile/ProfilePolicyService;

    if-nez v0, :cond_0

    return-object v9

    :cond_0
    const-string v1, "Restriction"

    .line 3084
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 3086
    :cond_1
    aget-object v1, v3, v15

    .line 3087
    invoke-virtual {v0, v9, v1}, Lcom/android/server/enterprise/profile/ProfilePolicyService;->getRestrictionPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 3089
    new-instance v9, Landroid/database/MatrixCursor;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3090
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_0
    return-object v9

    .line 218
    :pswitch_2
    invoke-static {v14}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v1, :cond_155

    if-eqz v2, :cond_155

    .line 220
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :goto_1
    move/from16 v16, v20

    goto/16 :goto_2

    :sswitch_0
    const-string v6, "isSettingsChangesAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_1

    :sswitch_1
    const-string/jumbo v7, "showToastIfIntelligenceOnlineProcessingDisallowed"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v16, v6

    goto/16 :goto_2

    :sswitch_2
    const-string v6, "isHeadPhoneEnabled"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    move/from16 v16, v17

    goto :goto_2

    :sswitch_3
    const-string v6, "isCameraEnabled"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    move/from16 v16, v18

    goto :goto_2

    :sswitch_4
    const-string v6, "isWifiDirectAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    move/from16 v16, v19

    goto :goto_2

    :sswitch_5
    const-string v6, "isIntelligenceOnlineProcessingAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_1

    :cond_6
    move/from16 v16, v7

    goto :goto_2

    :sswitch_6
    const-string v6, "isLocalContactStorageAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_1

    :cond_7
    const/16 v16, 0x3

    goto :goto_2

    :sswitch_7
    const-string v6, "isWallpaperChangeAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_1

    :cond_8
    move/from16 v16, v10

    goto :goto_2

    :sswitch_8
    const-string v6, "isPowerOffAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_1

    :cond_9
    move/from16 v16, v13

    goto :goto_2

    :sswitch_9
    const-string v6, "isPowerSavingModeAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_1

    :cond_a
    move/from16 v16, v15

    :cond_b
    :goto_2
    packed-switch v16, :pswitch_data_1

    const-string/jumbo v0, "return null"

    .line 293
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :pswitch_3
    if-eqz v3, :cond_e

    .line 244
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v5

    if-ge v5, v13, :cond_c

    goto :goto_3

    .line 247
    :cond_c
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-ne v0, v10, :cond_d

    .line 248
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    aget-object v4, v3, v13

    .line 249
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v15

    .line 250
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 248
    invoke-virtual {v1, v0, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto/16 :goto_6

    .line 252
    :cond_d
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v15

    .line 254
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 252
    invoke-virtual {v1, v0, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto/16 :goto_6

    :cond_e
    :goto_3
    return-object v9

    .line 290
    :pswitch_4
    invoke-virtual {v1, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->showToastIfIntelligenceOnlineProcessingDisallowed(I)Z

    move-result v0

    goto/16 :goto_6

    :pswitch_5
    if-eqz v3, :cond_10

    .line 226
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_f

    goto :goto_4

    .line 229
    :cond_f
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v15

    .line 231
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 229
    invoke-virtual {v1, v0, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHeadphoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto/16 :goto_6

    :cond_10
    :goto_4
    return-object v9

    :pswitch_6
    if-eqz v3, :cond_12

    .line 266
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_11

    goto :goto_5

    .line 269
    :cond_11
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v15

    .line 270
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 269
    invoke-virtual {v1, v0, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto :goto_6

    :cond_12
    :goto_5
    return-object v9

    :pswitch_7
    if-eqz v3, :cond_13

    .line 273
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_13

    .line 274
    aget-object v0, v3, v15

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 278
    :cond_13
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0, v15}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiDirectAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto :goto_6

    :pswitch_8
    if-eqz v3, :cond_14

    .line 282
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_14

    .line 283
    aget-object v0, v3, v15

    .line 284
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 283
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isIntelligenceOnlineProcessingAllowed(I)Z

    move-result v0

    goto :goto_6

    .line 286
    :cond_14
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isIntelligenceOnlineProcessingAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    goto :goto_6

    .line 222
    :pswitch_9
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLocalContactStorageAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    goto :goto_6

    :pswitch_a
    if-eqz v3, :cond_15

    .line 237
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_15

    .line 238
    aget-object v0, v3, v15

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 240
    :cond_15
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0, v15}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWallpaperChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto :goto_6

    .line 258
    :pswitch_b
    invoke-virtual {v0, v3, v4, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->restrictionPolicyIsPowerOffAllowed([Ljava/lang/String;ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    move-result v0

    goto :goto_6

    .line 262
    :pswitch_c
    invoke-virtual {v0, v4, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->restrictionPolicyisPowerSavingModeAllowed(ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    move-result v0

    .line 297
    :goto_6
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 301
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 300
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_d
    const-string v0, "dex_policy"

    .line 2983
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/dex/DexPolicy;

    if-eqz v0, :cond_155

    if-eqz v2, :cond_155

    .line 2986
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    :goto_7
    move/from16 v7, v20

    goto :goto_8

    :sswitch_a
    const-string v1, "isVirtualMacAddressEnforced"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_7

    :sswitch_b
    const-string v1, "isEthernetOnlyEnforced"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_7

    :cond_16
    const/4 v7, 0x3

    goto :goto_8

    :sswitch_c
    const-string v1, "getVirtualMacAddress"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_7

    :cond_17
    move v7, v10

    goto :goto_8

    :sswitch_d
    const-string v1, "isScreenTimeoutChangeAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_7

    :cond_18
    move v7, v13

    goto :goto_8

    :sswitch_e
    const-string v1, "isDexDisabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_7

    :cond_19
    move v7, v15

    :cond_1a
    :goto_8
    packed-switch v7, :pswitch_data_2

    return-object v9

    .line 3024
    :pswitch_e
    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->isVirtualMacAddressEnforced()Z

    move-result v0

    .line 3026
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isVirtualMacAddressEnforced"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3031
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 3030
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_9

    .line 3012
    :pswitch_f
    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->isEthernetOnlyEnforced()Z

    move-result v0

    .line 3015
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isEthernetOnlyEnforced"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3020
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 3019
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_9

    .line 3035
    :pswitch_10
    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->getVirtualMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 3037
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getVirtualMacAddress"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3041
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_9

    .line 2988
    :pswitch_11
    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->isScreenTimeoutChangeAllowed()Z

    move-result v0

    .line 2991
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isScreenTimeoutChangeAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2996
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2995
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_9

    .line 3000
    :pswitch_12
    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexDisabled()Z

    move-result v0

    .line 3003
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isDexDisabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3008
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 3007
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_9
    return-object v1

    :pswitch_13
    if-eqz v2, :cond_155

    const-string v0, "getDefaultCaptivePortalUrl"

    .line 3055
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_a

    :cond_1b
    const-string v0, "getDefaultCaptivePortalUrl"

    .line 3057
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "firewall"

    .line 3059
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/firewall/Firewall;

    if-eqz v0, :cond_1c

    .line 3063
    invoke-virtual {v0}, Lcom/android/server/enterprise/firewall/Firewall;->getDefaulCaptivePortalURL()Ljava/lang/String;

    move-result-object v9

    .line 3066
    :cond_1c
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "getDefaultCaptivePortalUrl"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3070
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v9, v0

    :goto_a
    return-object v9

    :pswitch_14
    const-string v0, "date_time_policy"

    .line 2939
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;

    if-eqz v0, :cond_155

    if-eqz v2, :cond_155

    const-string v1, "isDateTimeChangeEnalbed"

    .line 2942
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string v1, "getAutomaticTime"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return-object v9

    .line 2961
    :cond_1d
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->getAutomaticTime(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2965
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getAutomaticTime"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2971
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2970
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_b

    .line 2945
    :cond_1e
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->isDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2949
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isDateTimeChangeEnalbed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2955
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2954
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_b
    return-object v1

    :pswitch_15
    const-string/jumbo v1, "smartcard_browser_policy"

    .line 2728
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;

    if-eqz v1, :cond_155

    if-eqz v2, :cond_1f

    const-string v5, "isAuthenticationEnabled"

    .line 2731
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 2734
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2735
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->isAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2738
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isAuthenticationEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2743
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2742
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :cond_1f
    if-eqz v2, :cond_155

    const-string v5, "getClientCertificateAlias"

    .line 2750
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_155

    if-eqz v3, :cond_21

    .line 2752
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_20

    goto :goto_c

    .line 2756
    :cond_20
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v15

    aget-object v3, v3, v13

    .line 2758
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2757
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->getClientCertificateAlias(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2761
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getClientCertificateAlias"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2766
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :cond_21
    :goto_c
    return-object v9

    :pswitch_16
    const-string/jumbo v0, "security_policy"

    .line 2777
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/security/SecurityPolicy;

    if-eqz v0, :cond_155

    if-eqz v2, :cond_155

    const-string v1, "isDodBannerVisible"

    .line 2780
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "getCredentialStorageStatus"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return-object v9

    .line 2800
    :cond_22
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getCredentialStorageStatus(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 2805
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2810
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Integer;

    move-result-object v2

    .line 2809
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2812
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCredentialStorageStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 2784
    :cond_23
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isDodBannerVisible(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2788
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isDodBannerVisible"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2793
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2792
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_d
    return-object v1

    :pswitch_17
    const-string/jumbo v0, "roaming_policy"

    .line 2561
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RoamingPolicy;

    if-eqz v0, :cond_155

    if-eqz v2, :cond_155

    .line 2563
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_2

    goto :goto_e

    :sswitch_f
    const-string v1, "isRoamingPushEnabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    goto :goto_e

    :cond_24
    const/16 v20, 0x3

    goto :goto_e

    :sswitch_10
    const-string v1, "isRoamingDataEnabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_e

    :cond_25
    move/from16 v20, v10

    goto :goto_e

    :sswitch_11
    const-string v1, "isRoamingSyncEnabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    goto :goto_e

    :cond_26
    move/from16 v20, v13

    goto :goto_e

    :sswitch_12
    const-string v1, "isRoamingVoiceCallsEnabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    goto :goto_e

    :cond_27
    move/from16 v20, v15

    :goto_e
    packed-switch v20, :pswitch_data_3

    return-object v9

    .line 2579
    :pswitch_18
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingPushEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2583
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isRoamingPushEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2588
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2587
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_f

    .line 2593
    :pswitch_19
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2597
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isRoamingDataEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2602
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2601
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_f

    .line 2565
    :pswitch_1a
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingSyncEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2569
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isRoamingSyncEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2574
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2573
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_f

    .line 2607
    :pswitch_1b
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingVoiceCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2611
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isRoamingVoiceCallsEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2616
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2615
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_f
    return-object v1

    .line 1244
    :pswitch_1c
    invoke-static {v14}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v1, :cond_155

    if-eqz v2, :cond_155

    .line 1246
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_3

    :goto_10
    move/from16 v6, v20

    goto/16 :goto_11

    :sswitch_13
    const-string v5, "isScreenCaptureEnabledInternal"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_28

    goto :goto_10

    :cond_28
    const/16 v6, 0x11

    goto/16 :goto_11

    :sswitch_14
    const-string v5, "isUsbHostStorageAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29

    goto :goto_10

    :cond_29
    move v6, v12

    goto/16 :goto_11

    :sswitch_15
    const-string v5, "isUsbTetheringEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2a

    goto :goto_10

    :cond_2a
    const/16 v6, 0xf

    goto/16 :goto_11

    :sswitch_16
    const-string v5, "isUsbMassStorageEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    goto :goto_10

    :cond_2b
    const/16 v6, 0xe

    goto/16 :goto_11

    :sswitch_17
    const-string v5, "isWifiTetheringEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    goto :goto_10

    :cond_2c
    const/16 v6, 0xd

    goto/16 :goto_11

    :sswitch_18
    const-string v5, "getAllowedFOTAInfo"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d

    goto :goto_10

    :cond_2d
    const/16 v6, 0xc

    goto/16 :goto_11

    :sswitch_19
    const-string v5, "isGearPolicyEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2e

    goto :goto_10

    :cond_2e
    const/16 v6, 0xb

    goto/16 :goto_11

    :sswitch_1a
    const-string v5, "isUseSecureKeypadEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    goto :goto_10

    :cond_2f
    const/16 v6, 0xa

    goto/16 :goto_11

    :sswitch_1b
    const-string v5, "isFotaVersionAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    goto :goto_10

    :cond_30
    move/from16 v6, v16

    goto/16 :goto_11

    :sswitch_1c
    const-string v5, "isSDCardWriteAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39

    goto/16 :goto_10

    :sswitch_1d
    const-string v5, "isWifiDirectAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_31

    goto/16 :goto_10

    :cond_31
    move/from16 v6, v17

    goto :goto_11

    :sswitch_1e
    const-string v5, "isUserMobileDataLimitAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32

    goto/16 :goto_10

    :cond_32
    move/from16 v6, v18

    goto :goto_11

    :sswitch_1f
    const-string v5, "isVpnAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    goto/16 :goto_10

    :cond_33
    move/from16 v6, v19

    goto :goto_11

    :sswitch_20
    const-string v5, "isWifiEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34

    goto/16 :goto_10

    :cond_34
    move v6, v7

    goto :goto_11

    :sswitch_21
    const-string v5, "isVideoRecordAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    goto/16 :goto_10

    :cond_35
    const/4 v6, 0x3

    goto :goto_11

    :sswitch_22
    const-string v5, "isWallpaperChangeAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    goto/16 :goto_10

    :cond_36
    move v6, v10

    goto :goto_11

    :sswitch_23
    const-string v5, "isUsbMediaPlayerAvailable"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    goto/16 :goto_10

    :cond_37
    move v6, v13

    goto :goto_11

    :sswitch_24
    const-string v5, "isPowerSavingModeAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_38

    goto/16 :goto_10

    :cond_38
    move v6, v15

    :cond_39
    :goto_11
    packed-switch v6, :pswitch_data_4

    return-object v9

    :pswitch_1d
    if-nez v3, :cond_3a

    .line 1457
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3b

    .line 1458
    :cond_3a
    aget-object v0, v3, v15

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 1461
    :cond_3b
    invoke-virtual {v1, v15}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabledInternal(Z)Z

    move-result v0

    .line 1463
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1467
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1466
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_1e
    if-eqz v3, :cond_3c

    .line 1251
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3c

    .line 1252
    aget-object v0, v3, v15

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 1254
    :cond_3c
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0, v15}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 1258
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isUsbHostStorageAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1262
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1261
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15

    .line 1299
    :pswitch_1f
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 1303
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isUsbTetheringEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1307
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1306
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_20
    if-eqz v3, :cond_3e

    .line 1267
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_3d

    goto :goto_12

    .line 1270
    :cond_3d
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v15

    .line 1271
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1270
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbMassStorageEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 1274
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isUsbMassStorageEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1278
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1277
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15

    :cond_3e
    :goto_12
    return-object v9

    .line 1409
    :pswitch_21
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 1413
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isWifiTetheringEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1417
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1416
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15

    .line 1497
    :pswitch_22
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getAllowedFOTAInfo(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    .line 1499
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getAllowedFOTAInfo"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v0, :cond_47

    .line 1503
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_47

    .line 1504
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1505
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_13

    .line 1486
    :pswitch_23
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0, v13}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWearablePolicyEnabled(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    .line 1489
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1493
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1492
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15

    .line 1326
    :pswitch_24
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUseSecureKeypadEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 1330
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isUseSecureKeypadEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1334
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1333
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15

    .line 1476
    :pswitch_25
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v0, "isFotaVersionAllowed"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1481
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1480
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15

    .line 1422
    :pswitch_26
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardWriteAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 1426
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isSDCardWriteAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1430
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1429
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_27
    if-eqz v3, :cond_3f

    .line 1393
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3f

    .line 1394
    aget-object v0, v3, v15

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 1396
    :cond_3f
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0, v15}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiDirectAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 1400
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isWifiDirectAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1404
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1403
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15

    .line 1312
    :pswitch_28
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUserMobileDataLimitAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 1317
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isUserMobileDataLimitAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1321
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1320
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15

    .line 1358
    :pswitch_29
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isVpnAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 1362
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isVpnAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1366
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1365
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_2a
    const-string/jumbo v1, "wifi_policy"

    .line 1435
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/wifi/WifiPolicy;

    if-nez v3, :cond_40

    .line 1437
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_41

    .line 1438
    :cond_40
    aget-object v0, v3, v15

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    :cond_41
    if-eqz v1, :cond_42

    .line 1441
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0, v15}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 1444
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isWifiEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1448
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1447
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15

    :cond_42
    return-object v9

    :pswitch_2b
    if-eqz v3, :cond_43

    .line 1342
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_43

    .line 1343
    aget-object v0, v3, v15

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 1345
    :cond_43
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0, v15}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isVideoRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 1349
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isVideoRecordAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1353
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1352
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_2c
    if-eqz v3, :cond_44

    .line 1374
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_44

    .line 1375
    aget-object v0, v3, v15

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 1377
    :cond_44
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0, v15}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWallpaperChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 1381
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isWallpaperChangeAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1385
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1384
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_15

    :pswitch_2d
    if-eqz v3, :cond_46

    .line 1283
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_45

    goto :goto_14

    .line 1286
    :cond_45
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v15

    .line 1287
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1286
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbMediaPlayerAvailable(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 1290
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isUsbMediaPlayerAvailable"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1294
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1293
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_15

    :cond_46
    :goto_14
    return-object v9

    .line 1512
    :pswitch_2e
    invoke-virtual {v0, v4, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->restrictionPolicyisPowerSavingModeAllowed(ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    move-result v0

    .line 1514
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1518
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1517
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_47
    :goto_15
    return-object v1

    .line 932
    :pswitch_2f
    invoke-static {v14}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v1, :cond_155

    if-eqz v2, :cond_155

    .line 934
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_4

    :goto_16
    move/from16 v6, v20

    goto/16 :goto_17

    :sswitch_25
    const-string v6, "isSVoiceAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_48

    goto :goto_16

    :cond_48
    const/16 v6, 0x11

    goto/16 :goto_17

    :sswitch_26
    const-string v6, "isScreenCaptureEnabled"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_49

    goto :goto_16

    :cond_49
    move v6, v12

    goto/16 :goto_17

    :sswitch_27
    const-string v6, "isSettingsChangesAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4a

    goto :goto_16

    :cond_4a
    const/16 v6, 0xf

    goto/16 :goto_17

    :sswitch_28
    const-string v6, "isStatusBarExpansionallowedAsUser"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4b

    goto :goto_16

    :cond_4b
    const/16 v6, 0xe

    goto/16 :goto_17

    :sswitch_29
    const-string v6, "isSDCardMoveAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4c

    goto :goto_16

    :cond_4c
    const/16 v6, 0xd

    goto/16 :goto_17

    :sswitch_2a
    const-string v6, "isUsbDebuggingEnabled"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4d

    goto :goto_16

    :cond_4d
    const/16 v6, 0xc

    goto/16 :goto_17

    :sswitch_2b
    const-string v6, "isIrisCameraEnabledAsUser"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4e

    goto :goto_16

    :cond_4e
    const/16 v6, 0xb

    goto/16 :goto_17

    :sswitch_2c
    const-string v6, "isSafeModeAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4f

    goto :goto_16

    :cond_4f
    const/16 v6, 0xa

    goto/16 :goto_17

    :sswitch_2d
    const-string v6, "isOdeTrustedBootVerificationEnabled"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_50

    goto :goto_16

    :cond_50
    move/from16 v6, v16

    goto/16 :goto_17

    :sswitch_2e
    const-string v7, "isSmartClipModeAllowed"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_59

    goto/16 :goto_16

    :sswitch_2f
    const-string v6, "isSettingsChangesAllowedAsUser"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_51

    goto/16 :goto_16

    :cond_51
    move/from16 v6, v17

    goto :goto_17

    :sswitch_30
    const-string v6, "isSdCardEnabled"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_52

    goto/16 :goto_16

    :cond_52
    move/from16 v6, v18

    goto :goto_17

    :sswitch_31
    const-string v6, "isOTAUpgradeAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_53

    goto/16 :goto_16

    :cond_53
    move/from16 v6, v19

    goto :goto_17

    :sswitch_32
    const-string v6, "isStopSystemAppAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_54

    goto/16 :goto_16

    :cond_54
    move v6, v7

    goto :goto_17

    :sswitch_33
    const-string v6, "isPowerOffAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_55

    goto/16 :goto_16

    :cond_55
    const/4 v6, 0x3

    goto :goto_17

    :sswitch_34
    const-string v6, "isScreenPinningAllowedAsUser"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_56

    goto/16 :goto_16

    :cond_56
    move v6, v10

    goto :goto_17

    :sswitch_35
    const-string v6, "isSBeamAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_57

    goto/16 :goto_16

    :cond_57
    move v6, v13

    goto :goto_17

    :sswitch_36
    const-string v6, "isShareListAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_58

    goto/16 :goto_16

    :cond_58
    move v6, v15

    :cond_59
    :goto_17
    packed-switch v6, :pswitch_data_5

    return-object v9

    :pswitch_30
    if-eqz v3, :cond_5a

    .line 1204
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v2

    if-ne v2, v13, :cond_5a

    .line 1205
    aget-object v0, v3, v15

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    goto :goto_18

    :cond_5a
    if-eqz v3, :cond_5b

    .line 1206
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-ne v0, v10, :cond_5b

    .line 1208
    aget-object v0, v3, v15

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 1209
    aget-object v0, v3, v13

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1211
    :cond_5b
    :goto_18
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0, v15}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSVoiceAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 1212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSVoiceAllowed result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isSVoiceAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1218
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1217
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_20

    :pswitch_31
    if-eqz v3, :cond_5d

    .line 1067
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_5c

    goto :goto_19

    .line 1070
    :cond_5c
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v15

    .line 1072
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1070
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 1075
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isScreenCaptureEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1079
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1078
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_20

    :cond_5d
    :goto_19
    return-object v9

    :pswitch_32
    if-eqz v3, :cond_60

    .line 936
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v2

    if-ge v2, v13, :cond_5e

    goto :goto_1b

    .line 939
    :cond_5e
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-ne v0, v10, :cond_5f

    .line 940
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    aget-object v2, v3, v13

    .line 941
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v15

    .line 942
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 940
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto :goto_1a

    .line 944
    :cond_5f
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v15

    .line 946
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 944
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 950
    :goto_1a
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isSettingsChangesAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 954
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 953
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_20

    :cond_60
    :goto_1b
    return-object v9

    :pswitch_33
    if-eqz v3, :cond_61

    .line 1171
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_61

    .line 1172
    aget-object v0, v3, v15

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 1174
    :cond_61
    invoke-virtual {v1, v15, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStatusBarExpansionAllowedAsUser(ZI)Z

    move-result v0

    .line 1178
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isStatusBarExpansionallowedAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1182
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1181
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_20

    :pswitch_34
    if-eqz v3, :cond_63

    .line 1097
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_62

    goto :goto_1c

    .line 1100
    :cond_62
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v15

    .line 1102
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1100
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardMoveAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 1105
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isSDCardMoveAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1109
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1108
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_20

    :cond_63
    :goto_1c
    return-object v9

    .line 1223
    :pswitch_35
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbDebuggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 1227
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isUsbDebuggingEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1231
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1230
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_20

    :pswitch_36
    if-eqz v3, :cond_65

    .line 1134
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_64

    goto :goto_1d

    .line 1137
    :cond_64
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v15

    .line 1139
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1137
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isIrisCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 1141
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isIrisCameraEnabledAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1145
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1144
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_20

    :cond_65
    :goto_1d
    return-object v9

    .line 1035
    :pswitch_37
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSafeModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 1039
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isSafeModeAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1043
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1042
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_20

    .line 996
    :pswitch_38
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isODETrustedBootVerificationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 999
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isOdeTrustedBootVerificationEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1003
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1002
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_20

    :pswitch_39
    if-eqz v3, :cond_66

    .line 1153
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_66

    .line 1154
    aget-object v0, v3, v15

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 1156
    :cond_66
    invoke-virtual {v1, v15}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSmartClipModeAllowedInternal(Z)Z

    move-result v0

    .line 1159
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isSmartClipModeAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1163
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1162
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_20

    :pswitch_3a
    if-eqz v3, :cond_68

    .line 959
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-ge v0, v10, :cond_67

    goto :goto_1e

    .line 962
    :cond_67
    aget-object v0, v3, v15

    .line 963
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    aget-object v2, v3, v13

    .line 964
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 962
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    move-result v0

    .line 965
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RESTRICTIONPOLICY_SETTINGSCHANGESASUSER_METHOD return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isSettingsChangesAllowedAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 972
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 971
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_20

    :cond_68
    :goto_1e
    return-object v9

    .line 1084
    :pswitch_3b
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSdCardEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 1088
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isSdCardEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1092
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1091
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_20

    .line 1008
    :pswitch_3c
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isOTAUpgradeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 1012
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isOTAUpgradeAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1016
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1015
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    .line 1187
    :pswitch_3d
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStopSystemAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 1191
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isStopSystemAppAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1195
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1194
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_20

    .line 1022
    :pswitch_3e
    invoke-virtual {v0, v3, v4, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->restrictionPolicyIsPowerOffAllowed([Ljava/lang/String;ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    move-result v0

    .line 1026
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1030
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1029
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_20

    :pswitch_3f
    if-eqz v3, :cond_69

    .line 1116
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_69

    .line 1117
    aget-object v2, v3, v15

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    :cond_69
    if-eqz v3, :cond_6a

    .line 1119
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-ne v0, v10, :cond_6a

    .line 1120
    aget-object v0, v3, v13

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1122
    :cond_6a
    invoke-virtual {v1, v15, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenPinningAllowedAsUser(ZI)Z

    move-result v0

    .line 1125
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isScreenPinningAllowedAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1129
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1128
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_20

    :pswitch_40
    if-eqz v3, :cond_6b

    .line 1051
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_6b

    .line 1052
    aget-object v0, v3, v15

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 1058
    :cond_6b
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v0, "isSBeamAllowed"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1062
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1061
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_20

    .line 976
    :pswitch_41
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-ne v0, v13, :cond_6c

    .line 977
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v15

    .line 979
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 977
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isShareListAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto :goto_1f

    .line 981
    :cond_6c
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0, v15}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isShareListAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 986
    :goto_1f
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isShareListAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 990
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 989
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_20
    return-object v1

    .line 626
    :pswitch_42
    invoke-static {v14}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v1, :cond_155

    if-eqz v2, :cond_155

    .line 628
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_5

    :goto_21
    move/from16 v6, v20

    goto/16 :goto_22

    :sswitch_37
    const-string v5, "isKillingActivitiesOnLeaveAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6d

    goto :goto_21

    :cond_6d
    move v6, v12

    goto/16 :goto_22

    :sswitch_38
    const-string v5, "isGoogleAccountsAutoSyncAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    goto :goto_21

    :cond_6e
    const/16 v6, 0xf

    goto/16 :goto_22

    :sswitch_39
    const-string v5, "isNFCEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6f

    goto :goto_21

    :cond_6f
    const/16 v6, 0xe

    goto/16 :goto_22

    :sswitch_3a
    const-string v5, "isMockLocationEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_70

    goto :goto_21

    :cond_70
    const/16 v6, 0xd

    goto/16 :goto_22

    :sswitch_3b
    const-string v5, "isHeadPhoneEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_71

    goto :goto_21

    :cond_71
    const/16 v6, 0xc

    goto/16 :goto_22

    :sswitch_3c
    const-string v5, "isHomeKeyEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_72

    goto :goto_21

    :cond_72
    const/16 v6, 0xb

    goto/16 :goto_22

    :sswitch_3d
    const-string v5, "isNonMarketAppAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73

    goto :goto_21

    :cond_73
    const/16 v6, 0xa

    goto/16 :goto_22

    :sswitch_3e
    const-string v5, "isFirmwareRecoveryAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    goto :goto_21

    :cond_74
    move/from16 v6, v16

    goto/16 :goto_22

    :sswitch_3f
    const-string v5, "isLockScreenViewAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7d

    goto :goto_21

    :sswitch_40
    const-string v5, "isFirmwareAutoUpdateAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_75

    goto :goto_21

    :cond_75
    move/from16 v6, v17

    goto :goto_22

    :sswitch_41
    const-string v5, "isNewAdminInstallationEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_76

    goto/16 :goto_21

    :cond_76
    move/from16 v6, v18

    goto :goto_22

    :sswitch_42
    const-string v5, "isLockScreenEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_77

    goto/16 :goto_21

    :cond_77
    move/from16 v6, v19

    goto :goto_22

    :sswitch_43
    const-string v5, "isMicrophoneEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_78

    goto/16 :goto_21

    :cond_78
    move v6, v7

    goto :goto_22

    :sswitch_44
    const-string v5, "isMicrophoneEnabledAsUser"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_79

    goto/16 :goto_21

    :cond_79
    const/4 v6, 0x3

    goto :goto_22

    :sswitch_45
    const-string v5, "isGoogleCrashReportedAllowed"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7a

    goto/16 :goto_21

    :cond_7a
    move v6, v10

    goto :goto_22

    :sswitch_46
    const-string v5, "isNonTrustedAppInstallBlocked"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7b

    goto/16 :goto_21

    :cond_7b
    move v6, v13

    goto :goto_22

    :sswitch_47
    const-string v5, "isNFCEnabledWithMsg"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7c

    goto/16 :goto_21

    :cond_7c
    move v6, v15

    :cond_7d
    :goto_22
    packed-switch v6, :pswitch_data_6

    const-string/jumbo v0, "return null"

    .line 923
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :pswitch_43
    if-nez v3, :cond_7e

    .line 729
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKillingActivitiesOnLeaveAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 731
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isKillingActivitiesOnLeaveAllowed return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " callingUid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 734
    :cond_7e
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    aget-object v2, v3, v15

    .line 735
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 734
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKillingActivitiesOnLeaveAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 736
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isKillingActivitiesOnLeaveAllowed return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " userid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v3, v15

    .line 737
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 736
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :goto_23
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isKillingActivitiesOnLeaveAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 744
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 743
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_30

    .line 666
    :pswitch_44
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleAccountsAutoSyncAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 670
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isGoogleAccountsAutoSyncAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 674
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 673
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_30

    .line 871
    :pswitch_45
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v0, "isNFCEnabled"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 875
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 874
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_30

    :pswitch_46
    if-nez v3, :cond_7f

    .line 832
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMockLocationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 834
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callingUid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 836
    :cond_7f
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    aget-object v2, v3, v15

    .line 837
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 836
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMockLocationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 838
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callingUid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v3, v15

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :goto_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMockLocationEnabled return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isMockLocationEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 846
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 845
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_30

    :pswitch_47
    if-eqz v3, :cond_81

    .line 692
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_80

    goto :goto_25

    .line 695
    :cond_80
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v15

    .line 697
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 695
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHeadphoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 700
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isHeadPhoneEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 704
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 703
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_30

    :cond_81
    :goto_25
    return-object v9

    :pswitch_48
    if-eqz v3, :cond_82

    .line 712
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_82

    .line 713
    aget-object v0, v3, v15

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 715
    :cond_82
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0, v15}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHomeKeyEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 719
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isHomeKeyEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 723
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 722
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_30

    :pswitch_49
    if-eqz v3, :cond_83

    .line 893
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    aget-object v2, v3, v15

    .line 894
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 893
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonMarketAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    goto :goto_26

    .line 896
    :cond_83
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonMarketAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 901
    :goto_26
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isNonMarketAppAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 905
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 904
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_30

    :pswitch_4a
    if-eqz v3, :cond_85

    .line 648
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_84

    goto :goto_27

    .line 652
    :cond_84
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v15

    .line 654
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 652
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareRecoveryAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 657
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isFirmwareRecoveryAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 661
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 660
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_30

    :cond_85
    :goto_27
    return-object v9

    :pswitch_4b
    if-eqz v3, :cond_88

    .line 766
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v2

    if-ge v2, v13, :cond_86

    goto :goto_29

    .line 769
    :cond_86
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-ne v0, v10, :cond_87

    .line 770
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    aget-object v2, v3, v15

    .line 771
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v13

    .line 772
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 770
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    goto :goto_28

    .line 774
    :cond_87
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v15

    .line 776
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 774
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    .line 778
    :goto_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLockScreenViewAllowed return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isLockScreenViewAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 784
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 783
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_30

    :cond_88
    :goto_29
    return-object v9

    :pswitch_4c
    if-eqz v3, :cond_8a

    .line 630
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_89

    goto :goto_2a

    .line 634
    :cond_89
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v15

    .line 636
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 634
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareAutoUpdateAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 639
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isFirmwareAutoUpdateAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 643
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 642
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_30

    :cond_8a
    :goto_2a
    return-object v9

    :pswitch_4d
    if-eqz v3, :cond_8c

    .line 851
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_8b

    goto :goto_2b

    .line 854
    :cond_8b
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v15

    .line 856
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 854
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminInstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 859
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isNewAdminInstallationEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 863
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 862
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_30

    :cond_8c
    :goto_2b
    return-object v9

    :pswitch_4e
    if-eqz v3, :cond_8e

    .line 749
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_8d

    goto :goto_2c

    .line 752
    :cond_8d
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v15

    .line 754
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 752
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 757
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isLockScreenEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 761
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 760
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_30

    :cond_8e
    :goto_2c
    return-object v9

    :pswitch_4f
    if-eqz v3, :cond_91

    .line 789
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v2

    if-ge v2, v13, :cond_8f

    goto :goto_2e

    .line 792
    :cond_8f
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-ne v0, v10, :cond_90

    .line 793
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    aget-object v2, v3, v15

    .line 794
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v13

    .line 795
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 793
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto :goto_2d

    .line 797
    :cond_90
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v15

    .line 799
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 797
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 801
    :goto_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMicrophoneEnabled return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isMicrophoneEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 807
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 806
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_30

    :cond_91
    :goto_2e
    return-object v9

    :pswitch_50
    if-eqz v3, :cond_93

    .line 812
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-ge v0, v10, :cond_92

    goto :goto_2f

    .line 815
    :cond_92
    aget-object v0, v3, v15

    .line 816
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    aget-object v2, v3, v13

    .line 817
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 815
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabledAsUser(ZI)Z

    move-result v0

    .line 819
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMicrophoneEnabledAsUser return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isMicrophoneEnabledAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 825
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 824
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_30

    :cond_93
    :goto_2f
    return-object v9

    .line 679
    :pswitch_51
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleCrashReportAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 683
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isGoogleCrashReportedAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 687
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 686
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_30

    .line 910
    :pswitch_52
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonTrustedAppInstallBlocked(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 914
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isNonTrustedAppInstallBlocked"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 918
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 917
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_30

    .line 883
    :pswitch_53
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v0, "isNFCEnabledWithMsg"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 887
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 886
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_30
    return-object v1

    .line 308
    :pswitch_54
    invoke-static {v14}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v1, :cond_155

    if-eqz v2, :cond_155

    .line 310
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_6

    :goto_31
    move/from16 v6, v20

    goto/16 :goto_32

    :sswitch_48
    const-string v6, "checkPackageSource"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_94

    goto :goto_31

    :cond_94
    const/16 v6, 0x12

    goto/16 :goto_32

    :sswitch_49
    const-string v6, "isAirplaneModeAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_95

    goto :goto_31

    :cond_95
    const/16 v6, 0x11

    goto/16 :goto_32

    :sswitch_4a
    const-string v6, "isClipboardShareAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_96

    goto :goto_31

    :cond_96
    move v6, v12

    goto/16 :goto_32

    :sswitch_4b
    const-string v6, "isFastEncryptionAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_97

    goto :goto_31

    :cond_97
    const/16 v6, 0xf

    goto/16 :goto_32

    :sswitch_4c
    const-string v6, "isFactoryResetAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_98

    goto :goto_31

    :cond_98
    const/16 v6, 0xe

    goto/16 :goto_32

    :sswitch_4d
    const-string v6, "isActivationLockAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_99

    goto :goto_31

    :cond_99
    const/16 v6, 0xd

    goto/16 :goto_32

    :sswitch_4e
    const-string v6, "isAndroidBeamAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9a

    goto :goto_31

    :cond_9a
    const/16 v6, 0xc

    goto/16 :goto_32

    :sswitch_4f
    const-string v6, "isDeveloperModeAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9b

    goto :goto_31

    :cond_9b
    const/16 v6, 0xb

    goto/16 :goto_32

    :sswitch_50
    const-string v6, "isClipboardShareAllowedAsUser"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9c

    goto :goto_31

    :cond_9c
    const/16 v6, 0xa

    goto/16 :goto_32

    :sswitch_51
    const-string v6, "isBackgroundProcessLimitEnabled"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9d

    goto/16 :goto_31

    :cond_9d
    move/from16 v6, v16

    goto/16 :goto_32

    :sswitch_52
    const-string v7, "isCameraEnabled"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a6

    goto/16 :goto_31

    :sswitch_53
    const-string v6, "isBackgroundDataEnabled"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9e

    goto/16 :goto_31

    :cond_9e
    move/from16 v6, v17

    goto :goto_32

    :sswitch_54
    const-string v6, "isBackupAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9f

    goto/16 :goto_31

    :cond_9f
    move/from16 v6, v18

    goto :goto_32

    :sswitch_55
    const-string v6, "isAudioRecordAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a0

    goto/16 :goto_31

    :cond_a0
    move/from16 v6, v19

    goto :goto_32

    :sswitch_56
    const-string v6, "isCellularDataAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a1

    goto/16 :goto_31

    :cond_a1
    move v6, v7

    goto :goto_32

    :sswitch_57
    const-string v6, "isClipboardAllowedAsUser"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a2

    goto/16 :goto_31

    :cond_a2
    const/4 v6, 0x3

    goto :goto_32

    :sswitch_58
    const-string v6, "isClipboardAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a3

    goto/16 :goto_31

    :cond_a3
    move v6, v10

    goto :goto_32

    :sswitch_59
    const-string v6, "isBluetoothTetheringEnabled"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a4

    goto/16 :goto_31

    :cond_a4
    move v6, v13

    goto :goto_32

    :sswitch_5a
    const-string v6, "isDataSavingAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a5

    goto/16 :goto_31

    :cond_a5
    move v6, v15

    :cond_a6
    :goto_32
    packed-switch v6, :pswitch_data_7

    return-object v9

    :pswitch_55
    if-eqz v3, :cond_a8

    .line 312
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_a7

    goto :goto_33

    .line 316
    :cond_a7
    aget-object v0, v3, v15

    invoke-virtual {v1, v5, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->checkPackageSource(ILjava/lang/String;)Z

    move-result v0

    .line 320
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "checkPackageSource"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 324
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 323
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3c

    :cond_a8
    :goto_33
    return-object v9

    :pswitch_56
    if-eqz v3, :cond_a9

    .line 349
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_a9

    .line 350
    aget-object v0, v3, v15

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 352
    :cond_a9
    invoke-virtual {v1, v15}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result v0

    .line 355
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isAirplaneModeAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 359
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 358
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3c

    .line 542
    :pswitch_57
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardShareAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 546
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isClipboardShareAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 550
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 549
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3c

    :pswitch_58
    if-eqz v3, :cond_ab

    .line 588
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-ge v0, v13, :cond_aa

    goto :goto_34

    .line 592
    :cond_aa
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v15

    .line 594
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 592
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFastEncryptionAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFastEncryptionAllowed return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isFastEncryptionAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 601
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 600
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3c

    :cond_ab
    :goto_34
    return-object v9

    .line 575
    :pswitch_59
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFactoryResetAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 579
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isFactoryResetAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 583
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 582
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3c

    :pswitch_5a
    if-eqz v3, :cond_ad

    .line 328
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_ac

    goto :goto_35

    .line 332
    :cond_ac
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v15

    .line 334
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 332
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isActivationLockAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 337
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isActivationLockAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 341
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 340
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3c

    :cond_ad
    :goto_35
    return-object v9

    :pswitch_5b
    if-eqz v3, :cond_ae

    .line 367
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_ae

    .line 368
    aget-object v0, v3, v15

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 374
    :cond_ae
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v0, "isAndroidBeamAllowed"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 378
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 377
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3c

    :pswitch_5c
    if-eqz v3, :cond_af

    .line 558
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_af

    .line 559
    aget-object v0, v3, v15

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 561
    :cond_af
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0, v15}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isDeveloperModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 565
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isDeveloperModeAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 569
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 568
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_5d
    if-eqz v3, :cond_b1

    .line 526
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_b0

    goto :goto_36

    .line 529
    :cond_b0
    aget-object v0, v3, v15

    .line 530
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 529
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardShareAllowedAsUser(I)Z

    move-result v0

    .line 533
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isClipboardShareAllowedAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 537
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 536
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3c

    :cond_b1
    :goto_36
    return-object v9

    .line 415
    :pswitch_5e
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundProcessLimitAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 419
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isBackgroundProcessLimitEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 423
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 422
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3c

    :pswitch_5f
    if-eqz v3, :cond_b3

    .line 457
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_b2

    goto :goto_37

    .line 460
    :cond_b2
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v15

    .line 461
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 460
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 463
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isCameraEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 467
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 466
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3c

    :cond_b3
    :goto_37
    return-object v9

    .line 402
    :pswitch_60
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 406
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isBackgroundDataEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 410
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 409
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3c

    :pswitch_61
    if-eqz v3, :cond_b5

    .line 428
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_b4

    goto :goto_38

    .line 431
    :cond_b4
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v15

    .line 432
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 431
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackupAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 435
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isBackupAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 439
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 438
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3c

    :cond_b5
    :goto_38
    return-object v9

    :pswitch_62
    if-eqz v3, :cond_b6

    .line 386
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_b6

    .line 387
    aget-object v0, v3, v15

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    .line 389
    :cond_b6
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0, v15}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAudioRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 393
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isAudioRecordAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 397
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 396
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3c

    .line 472
    :pswitch_63
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCellularDataAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 476
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isCellularDataAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 480
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 479
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3c

    :pswitch_64
    if-eqz v3, :cond_b8

    .line 505
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-ge v0, v10, :cond_b7

    goto :goto_39

    .line 508
    :cond_b7
    aget-object v0, v3, v15

    .line 509
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    aget-object v2, v3, v13

    .line 510
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 508
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowedAsUser(ZI)Z

    move-result v0

    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemKnoxPolicyContract.RestrictionPolicy.CLIPBOARD_ALLOWED_AS_USER return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isClipboardAllowedAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 520
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 519
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3c

    :cond_b8
    :goto_39
    return-object v9

    :pswitch_65
    if-eqz v3, :cond_ba

    .line 485
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_b9

    goto :goto_3a

    .line 490
    :cond_b9
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v15

    .line 492
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 490
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto :goto_3b

    .line 487
    :cond_ba
    :goto_3a
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0, v15}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 496
    :goto_3b
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isClipboardAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 500
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 499
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3c

    .line 444
    :pswitch_66
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBluetoothTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 448
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isBluetoothTetheringEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 452
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 451
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3c

    .line 606
    :pswitch_67
    invoke-virtual {v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isDataSavingAllowed()Z

    move-result v0

    .line 609
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isDataSavingAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 613
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 612
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_3c
    return-object v1

    :pswitch_68
    const-string/jumbo v1, "password_policy"

    .line 1930
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/security/PasswordPolicy;

    if-eqz v1, :cond_155

    if-eqz v2, :cond_155

    .line 1932
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_7

    goto/16 :goto_3d

    :sswitch_5b
    const-string v5, "isBiometricAuthenticationEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_bb

    goto/16 :goto_3d

    :cond_bb
    const/16 v20, 0xa

    goto/16 :goto_3d

    :sswitch_5c
    const-string v5, "isPasswordVisibilityEnabledAsUser"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_bc

    goto/16 :goto_3d

    :cond_bc
    move/from16 v20, v16

    goto/16 :goto_3d

    :sswitch_5d
    const-string v5, "isPasswordPatternMatched"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_bd

    goto/16 :goto_3d

    :cond_bd
    move/from16 v20, v6

    goto/16 :goto_3d

    :sswitch_5e
    const-string v5, "isBiometricAuthenticationEnabledAsUser"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_be

    goto/16 :goto_3d

    :cond_be
    move/from16 v20, v17

    goto :goto_3d

    :sswitch_5f
    const-string v5, "isChangeRequested"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_bf

    goto :goto_3d

    :cond_bf
    move/from16 v20, v18

    goto :goto_3d

    :sswitch_60
    const-string v5, "getCurrentFailedPasswordAttempts"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c0

    goto :goto_3d

    :cond_c0
    move/from16 v20, v19

    goto :goto_3d

    :sswitch_61
    const-string v5, "getPasswordLockDelay"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c1

    goto :goto_3d

    :cond_c1
    move/from16 v20, v7

    goto :goto_3d

    :sswitch_62
    const-string v5, "getMaximumFailedPasswordsForWipe"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c2

    goto :goto_3d

    :cond_c2
    const/16 v20, 0x3

    goto :goto_3d

    :sswitch_63
    const-string v5, "isPasswordVisibilityEnabled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c3

    goto :goto_3d

    :cond_c3
    move/from16 v20, v10

    goto :goto_3d

    :sswitch_64
    const-string v5, "isExternalStorageForFailedPasswordsWipeExcluded"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c4

    goto :goto_3d

    :cond_c4
    move/from16 v20, v13

    goto :goto_3d

    :sswitch_65
    const-string v5, "getMaximumFailedPasswordsForDisable"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c5

    goto :goto_3d

    :cond_c5
    move/from16 v20, v15

    :goto_3d
    packed-switch v20, :pswitch_data_8

    return-object v9

    :pswitch_69
    if-eqz v3, :cond_c7

    .line 1934
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_c6

    goto :goto_3e

    .line 1937
    :cond_c6
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v15

    .line 1939
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1937
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->isBiometricAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    .line 1942
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isBiometricAuthenticationEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1947
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1946
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_48

    :cond_c7
    :goto_3e
    return-object v9

    :pswitch_6a
    if-eqz v3, :cond_c9

    .line 2052
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-ge v0, v13, :cond_c8

    goto :goto_3f

    .line 2055
    :cond_c8
    aget-object v0, v3, v15

    .line 2056
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2055
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabledAsUser(I)Z

    move-result v0

    .line 2058
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPasswordVisibilityEnabledAsUser return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isPasswordVisibilityEnabledAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2065
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2064
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_48

    :cond_c9
    :goto_3f
    return-object v9

    :pswitch_6b
    if-eqz v3, :cond_cb

    .line 2009
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_ca

    goto :goto_40

    .line 2012
    :cond_ca
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v15

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordPatternMatched(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 2016
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isPasswordPatternMatched"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2021
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2020
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_48

    :cond_cb
    :goto_40
    return-object v9

    :pswitch_6c
    if-eqz v3, :cond_cd

    .line 1952
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gt v0, v13, :cond_cc

    goto :goto_41

    .line 1955
    :cond_cc
    aget-object v0, v3, v15

    .line 1956
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object v2, v3, v13

    .line 1957
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1955
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->isBiometricAuthenticationEnabledAsUser(II)Z

    move-result v0

    .line 1958
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isBiometricAuthenticationEnabledAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1962
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1961
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_48

    :cond_cd
    :goto_41
    return-object v9

    .line 1966
    :pswitch_6d
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequested(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1970
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isChangeRequested"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1975
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 1974
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_48

    .line 2146
    :pswitch_6e
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getCurrentFailedPasswordAttemptsInternal(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 2148
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2152
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 2151
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_48

    .line 2070
    :pswitch_6f
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordLockDelay(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 2074
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getPasswordLockDelay"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2079
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 2078
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_48

    :pswitch_70
    if-eqz v3, :cond_d1

    .line 2112
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v2

    if-ge v2, v13, :cond_ce

    goto :goto_44

    .line 2116
    :cond_ce
    aget-object v2, v3, v15

    if-nez v2, :cond_cf

    goto :goto_42

    .line 2119
    :cond_cf
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    .line 2121
    :goto_42
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-ne v0, v10, :cond_d0

    .line 2122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORWIPE_METHOD user id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v3, v15

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    aget-object v2, v3, v13

    .line 2128
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2126
    invoke-virtual {v1, v0, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForWipe(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    move-result v0

    goto :goto_43

    .line 2130
    :cond_d0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0, v9}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForWipe(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    move-result v0

    .line 2134
    :goto_43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORWIPE_METHOD return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getMaximumFailedPasswordsForWipe"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2142
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 2141
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_48

    :cond_d1
    :goto_44
    return-object v9

    :pswitch_71
    if-nez v3, :cond_d2

    .line 2027
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2030
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPasswordVisibilityEnabled callingUid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 2033
    :cond_d2
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    aget-object v2, v3, v15

    .line 2035
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2033
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2036
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPasswordVisibilityEnabled callingUid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v3, v15

    .line 2037
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2036
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    :goto_45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPasswordVisibilityEnabled return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isPasswordVisibilityEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2046
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2045
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_48

    :pswitch_72
    if-eqz v3, :cond_d3

    .line 1981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PASSWORDPOLICY_EXTERNALSTORAGEFORFAILEDPASSWORDSWIPE_METHOD user id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v3, v15

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    aget-object v2, v3, v15

    .line 1987
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 1985
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    goto :goto_46

    .line 1989
    :cond_d3
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 1990
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 1994
    :goto_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PASSWORDPOLICY_EXTERNALSTORAGEFORFAILEDPASSWORDSWIPE_METHOD return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isExternalStorageForFailedPasswordsWipeExcluded"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2004
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2003
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_48

    :pswitch_73
    if-eqz v3, :cond_d4

    .line 2085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORDISABLE_METHOD user id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v3, v15

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    aget-object v2, v3, v15

    .line 2091
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2089
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    goto :goto_47

    .line 2093
    :cond_d4
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 2097
    :goto_47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORDISABLE_METHOD return = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getMaximumFailedPasswordsForDisable"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 2106
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_48
    return-object v1

    :pswitch_74
    const-string/jumbo v1, "password_policy"

    .line 1723
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/security/PasswordPolicy;

    if-eqz v1, :cond_155

    if-eqz v2, :cond_155

    .line 1725
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_8

    goto/16 :goto_49

    :sswitch_66
    const-string v5, "hasMaxRepeatedCharacters"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d5

    goto/16 :goto_49

    :cond_d5
    const/16 v20, 0xb

    goto/16 :goto_49

    :sswitch_67
    const-string v5, "hasForbiddenNumericSequence"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d6

    goto/16 :goto_49

    :cond_d6
    const/16 v20, 0xa

    goto/16 :goto_49

    :sswitch_68
    const-string v5, "hasForbiddenCharacterSequence"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d7

    goto/16 :goto_49

    :cond_d7
    move/from16 v20, v16

    goto/16 :goto_49

    :sswitch_69
    const-string v5, "hasForbiddenData"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d8

    goto/16 :goto_49

    :cond_d8
    move/from16 v20, v6

    goto/16 :goto_49

    :sswitch_6a
    const-string v5, "getPasswordChangeTimeout"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d9

    goto/16 :goto_49

    :cond_d9
    move/from16 v20, v17

    goto :goto_49

    :sswitch_6b
    const-string v5, "getForbiddenStrings"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_da

    goto :goto_49

    :cond_da
    move/from16 v20, v18

    goto :goto_49

    :sswitch_6c
    const-string v5, "getRequiredPwdPatternRestrictions"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_db

    goto :goto_49

    :cond_db
    move/from16 v20, v19

    goto :goto_49

    :sswitch_6d
    const-string v5, "getMaximumCharacterOccurences"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_dc

    goto :goto_49

    :cond_dc
    move/from16 v20, v7

    goto :goto_49

    :sswitch_6e
    const-string v5, "hasForbiddenStringDistance"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_dd

    goto :goto_49

    :cond_dd
    const/16 v20, 0x3

    goto :goto_49

    :sswitch_6f
    const-string v5, "getMaximumNumericSequenceLength"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_de

    goto :goto_49

    :cond_de
    move/from16 v20, v10

    goto :goto_49

    :sswitch_70
    const-string v5, "getMaximumCharacterSequenceLength"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_df

    goto :goto_49

    :cond_df
    move/from16 v20, v13

    goto :goto_49

    :sswitch_71
    const-string v5, "getMinimumCharacterChangeLength"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e0

    goto :goto_49

    :cond_e0
    move/from16 v20, v15

    :goto_49
    packed-switch v20, :pswitch_data_9

    return-object v9

    :pswitch_75
    if-eqz v3, :cond_e2

    .line 1905
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_e1

    goto :goto_4a

    .line 1908
    :cond_e1
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v15

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasMaxRepeatedCharacters(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 1912
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "hasMaxRepeatedCharacters"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1917
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1916
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_52

    :cond_e2
    :goto_4a
    return-object v9

    :pswitch_76
    if-eqz v3, :cond_e4

    .line 1871
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_e3

    goto :goto_4b

    .line 1874
    :cond_e3
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v15

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenNumericSequence(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 1878
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "hasForbiddenNumericSequence"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1883
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1882
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_52

    :cond_e4
    :goto_4b
    return-object v9

    :pswitch_77
    if-eqz v3, :cond_e6

    .line 1837
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_e5

    goto :goto_4c

    .line 1840
    :cond_e5
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v15

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenCharacterSequence(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 1844
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "hasForbiddenCharacterSequence"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1849
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1848
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_52

    :cond_e6
    :goto_4c
    return-object v9

    :pswitch_78
    if-eqz v3, :cond_e8

    .line 1854
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_e7

    goto :goto_4d

    .line 1857
    :cond_e7
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v15

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 1861
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "hasForbiddenData"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1866
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1865
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_52

    :cond_e8
    :goto_4d
    return-object v9

    .line 1806
    :pswitch_79
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordChangeTimeout(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1810
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getPasswordChangeTimeout"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1815
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 1814
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_52

    :pswitch_7a
    if-eqz v3, :cond_ea

    .line 1727
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_e9

    goto :goto_4f

    .line 1730
    :cond_e9
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v15

    .line 1731
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1730
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->getForbiddenStrings(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    move-result-object v0

    .line 1734
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getForbiddenStrings"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v0, :cond_ef

    .line 1738
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ef

    .line 1741
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ef

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1742
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_4e

    :cond_ea
    :goto_4f
    return-object v9

    :pswitch_7b
    if-eqz v3, :cond_ec

    .line 1820
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_eb

    goto :goto_50

    .line 1823
    :cond_eb
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v15

    .line 1824
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1823
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->getRequiredPwdPatternRestrictions(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    move-result-object v0

    .line 1827
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getRequiredPwdPatternRestrictions"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1831
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_52

    :cond_ec
    :goto_50
    return-object v9

    .line 1750
    :pswitch_7c
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterOccurences(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1754
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getMaximumCharacterOccurences"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1759
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 1758
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_52

    :pswitch_7d
    if-eqz v3, :cond_ee

    .line 1888
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gt v0, v13, :cond_ed

    goto :goto_51

    .line 1891
    :cond_ed
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v15

    aget-object v3, v3, v13

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenStringDistance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1895
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "hasForbiddenStringDistance"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1900
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1899
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_52

    :cond_ee
    :goto_51
    return-object v9

    .line 1778
    :pswitch_7e
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumNumericSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1782
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getMaximumNumericSequenceLength"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1787
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 1786
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_52

    .line 1764
    :pswitch_7f
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1768
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getMaximumCharacterSequenceLength"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1773
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 1772
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_52

    .line 1792
    :pswitch_80
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMinimumCharacterChangeLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 1796
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getMinimumCharacterChangeLength"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1801
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 1800
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_ef
    :goto_52
    return-object v1

    :pswitch_81
    const-string v1, "location_policy"

    .line 2631
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/location/LocationPolicy;

    if-eqz v1, :cond_155

    if-eqz v2, :cond_155

    .line 2633
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_9

    goto :goto_53

    :sswitch_72
    const-string v6, "isLocationProviderBlocked"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f0

    goto :goto_53

    :cond_f0
    move/from16 v20, v10

    goto :goto_53

    :sswitch_73
    const-string v6, "isGPSStateChangeAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f1

    goto :goto_53

    :cond_f1
    move/from16 v20, v13

    goto :goto_53

    :sswitch_74
    const-string v6, "isLocationProviderBlockedAsUser"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f2

    goto :goto_53

    :cond_f2
    move/from16 v20, v15

    :goto_53
    packed-switch v20, :pswitch_data_a

    return-object v9

    :pswitch_82
    if-eqz v3, :cond_f4

    .line 2635
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_f3

    goto :goto_54

    .line 2638
    :cond_f3
    aget-object v0, v3, v15

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v0

    .line 2641
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isLocationProviderBlocked"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2646
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2645
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_56

    :cond_f4
    :goto_54
    return-object v9

    .line 2680
    :pswitch_83
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2684
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isGPSStateChangeAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2689
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2688
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_56

    :pswitch_84
    if-eqz v3, :cond_f8

    .line 2651
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v2

    if-ge v2, v13, :cond_f5

    goto :goto_57

    .line 2654
    :cond_f5
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-ne v0, v10, :cond_f7

    .line 2655
    aget-object v0, v3, v13

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x2

    if-ne v0, v2, :cond_f6

    .line 2657
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 2658
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLocationProviderBlockedAsUser using userId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " instead of UserHandle.USER_CURRENT"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    :cond_f6
    aget-object v2, v3, v15

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_55

    .line 2665
    :cond_f7
    aget-object v0, v3, v15

    invoke-virtual {v1, v0, v5}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v0

    .line 2670
    :goto_55
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isLocationProviderBlockedAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2675
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2674
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_56
    return-object v1

    :cond_f8
    :goto_57
    return-object v9

    :pswitch_85
    const-string v1, "browser_policy"

    .line 2825
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/browser/BrowserPolicy;

    const-string/jumbo v5, "misc_policy"

    .line 2827
    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/general/MiscPolicy;

    if-eqz v1, :cond_155

    if-eqz v2, :cond_155

    if-eqz v5, :cond_155

    .line 2829
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_a

    :goto_58
    move/from16 v7, v20

    goto :goto_59

    :sswitch_75
    const-string v6, "getURLFilterReportEnabled"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fd

    goto :goto_58

    :sswitch_76
    const-string v6, "isUrlBlocked"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f9

    goto :goto_58

    :cond_f9
    const/4 v7, 0x3

    goto :goto_59

    :sswitch_77
    const-string v6, "getURLFilterEnabled"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fa

    goto :goto_58

    :cond_fa
    move v7, v10

    goto :goto_59

    :sswitch_78
    const-string v6, "isGlobalProxyAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fb

    goto :goto_58

    :cond_fb
    move v7, v13

    goto :goto_59

    :sswitch_79
    const-string v6, "getURLFilterList"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fc

    goto :goto_58

    :cond_fc
    move v7, v15

    :cond_fd
    :goto_59
    packed-switch v7, :pswitch_data_b

    return-object v9

    .line 2875
    :pswitch_86
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2876
    invoke-virtual {v1, v0, v13, v15}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReportEnabledEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2880
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getURLFilterReportEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2884
    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5c

    :pswitch_87
    if-eqz v3, :cond_ff

    .line 2890
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_fe

    goto :goto_5a

    .line 2893
    :cond_fe
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v15

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->isUrlBlocked(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2898
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isUrlBlocked"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2902
    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_5c

    :cond_ff
    :goto_5a
    return-object v9

    .line 2833
    :pswitch_88
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2834
    invoke-virtual {v1, v0, v13, v15}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterEnabledEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result v0

    .line 2838
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getURLFilterEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2843
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2842
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_5c

    .line 2908
    :pswitch_89
    invoke-virtual {v5}, Lcom/android/server/enterprise/general/MiscPolicy;->isGlobalProxyAllowed()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2911
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isGlobalProxyAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2915
    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_5c

    .line 2851
    :pswitch_8a
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2852
    invoke-virtual {v1, v0, v13, v15}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterListEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Ljava/util/List;

    move-result-object v0

    .line 2855
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getURLFilterList"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v0, :cond_100

    .line 2860
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_100

    .line 2863
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_100

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2864
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_5b

    :cond_100
    :goto_5c
    return-object v1

    :pswitch_8b
    const-string v1, "certificate_policy"

    .line 1530
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    if-eqz v1, :cond_155

    if-eqz v2, :cond_155

    .line 1532
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_b

    goto/16 :goto_5d

    :sswitch_7a
    const-string v6, "isRevocationCheckEnabled"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_101

    goto/16 :goto_5d

    :cond_101
    const/16 v20, 0xa

    goto/16 :goto_5d

    :sswitch_7b
    const-string/jumbo v6, "validateChainAtInstall"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_102

    goto/16 :goto_5d

    :cond_102
    move/from16 v20, v16

    goto/16 :goto_5d

    :sswitch_7c
    const-string/jumbo v7, "notifyCertificateFailure"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_103

    goto/16 :goto_5d

    :cond_103
    move/from16 v20, v6

    goto/16 :goto_5d

    :sswitch_7d
    const-string v6, "isSignatureIdentityInformationEnabled"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_104

    goto/16 :goto_5d

    :cond_104
    move/from16 v20, v17

    goto :goto_5d

    :sswitch_7e
    const-string v6, "isCaCertificateDisabledAsUser"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_105

    goto :goto_5d

    :cond_105
    move/from16 v20, v18

    goto :goto_5d

    :sswitch_7f
    const-string v6, "getIdentitiesFromSignatures"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_106

    goto :goto_5d

    :cond_106
    move/from16 v20, v19

    goto :goto_5d

    :sswitch_80
    const-string v6, "isCaCertificateTrustedAsUser"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_107

    goto :goto_5d

    :cond_107
    move/from16 v20, v7

    goto :goto_5d

    :sswitch_81
    const-string v6, "isUserRemoveCertificatesAllowed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_108

    goto :goto_5d

    :cond_108
    const/16 v20, 0x3

    goto :goto_5d

    :sswitch_82
    const-string v6, "isOcspCheckEnabled"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_109

    goto :goto_5d

    :cond_109
    move/from16 v20, v10

    goto :goto_5d

    :sswitch_83
    const-string/jumbo v6, "validateCertificateAtInstall"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10a

    goto :goto_5d

    :cond_10a
    move/from16 v20, v13

    goto :goto_5d

    :sswitch_84
    const-string v6, "isCertificateValidationAtInstallEnabled"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10b

    goto :goto_5d

    :cond_10b
    move/from16 v20, v15

    :goto_5d
    packed-switch v20, :pswitch_data_c

    goto/16 :goto_68

    .line 1649
    :pswitch_8c
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isRevocationCheckEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 1652
    new-instance v9, Landroid/database/MatrixCursor;

    const-string v1, "isRevocationCheckEnabled"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1657
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1656
    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_68

    :pswitch_8d
    if-eqz v3, :cond_10d

    .line 1702
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_10c

    goto :goto_5e

    .line 1705
    :cond_10c
    aget-object v0, v3, v15

    .line 1706
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1705
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateChainAtInstall(Ljava/util/List;)I

    move-result v0

    .line 1709
    new-instance v9, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "validateChainAtInstall"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1714
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 1713
    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_68

    :cond_10d
    :goto_5e
    return-object v9

    :pswitch_8e
    if-eqz v3, :cond_10f

    .line 1641
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gt v0, v10, :cond_10e

    goto :goto_5f

    .line 1644
    :cond_10e
    aget-object v0, v3, v15

    aget-object v2, v3, v13

    aget-object v3, v3, v10

    .line 1645
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1644
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_68

    :cond_10f
    :goto_5f
    return-object v9

    :pswitch_8f
    if-eqz v3, :cond_111

    .line 1600
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_110

    goto :goto_60

    .line 1603
    :cond_110
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v15

    .line 1605
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1603
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isSignatureIdentityInformationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 1607
    new-instance v9, Landroid/database/MatrixCursor;

    const-string v1, "isSignatureIdentityInformationEnabled"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1612
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1611
    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_68

    :cond_111
    :goto_60
    return-object v9

    :pswitch_90
    if-eqz v3, :cond_114

    .line 1556
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_112

    goto :goto_61

    .line 1560
    :cond_112
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-le v0, v13, :cond_113

    .line 1561
    aget-object v0, v3, v13

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1563
    :cond_113
    aget-object v0, v3, v15

    invoke-virtual {v1, v0, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCaCertificateDisabledAsUser(Ljava/lang/String;I)Z

    move-result v0

    .line 1567
    new-instance v9, Landroid/database/MatrixCursor;

    const-string v1, "isCaCertificateDisabledAsUser"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1572
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1571
    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_68

    :cond_114
    :goto_61
    return-object v9

    :pswitch_91
    if-eqz v3, :cond_117

    .line 1616
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_115

    goto :goto_63

    .line 1619
    :cond_115
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v3, v15

    .line 1622
    invoke-static {v2}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/Signature;

    .line 1619
    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getIdentitiesFromSignatures(Lcom/samsung/android/knox/ContextInfo;[Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v0

    .line 1625
    new-instance v9, Landroid/database/MatrixCursor;

    const-string v1, "getIdentitiesFromSignatures"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v0, :cond_11f

    .line 1629
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11f

    .line 1631
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_116
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 1632
    array-length v2, v1

    move v3, v15

    :goto_62
    if-ge v3, v2, :cond_116

    aget-object v4, v1, v3

    .line 1633
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_62

    :cond_117
    :goto_63
    return-object v9

    :pswitch_92
    if-eqz v3, :cond_11a

    .line 1534
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v2

    if-gt v2, v13, :cond_118

    goto :goto_64

    .line 1538
    :cond_118
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-le v0, v10, :cond_119

    .line 1539
    aget-object v0, v3, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1541
    :cond_119
    aget-object v0, v3, v15

    .line 1542
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/keystore/CertificateInfo;

    aget-object v2, v3, v13

    .line 1544
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1541
    invoke-virtual {v1, v0, v2, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCaCertificateTrustedAsUser(Lcom/samsung/android/knox/keystore/CertificateInfo;ZI)Z

    move-result v0

    .line 1547
    new-instance v9, Landroid/database/MatrixCursor;

    const-string v1, "isCaCertificateTrustedAsUser"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1552
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1551
    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_68

    :cond_11a
    :goto_64
    return-object v9

    :pswitch_93
    if-eqz v3, :cond_11b

    .line 1578
    array-length v0, v3

    if-ne v0, v13, :cond_11b

    goto :goto_65

    :cond_11b
    move v13, v15

    :goto_65
    if-eqz v13, :cond_11c

    .line 1581
    aget-object v0, v3, v15

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1583
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowedAsUser(I)Z

    move-result v0

    goto :goto_66

    .line 1585
    :cond_11c
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 1586
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 1591
    :goto_66
    new-instance v9, Landroid/database/MatrixCursor;

    const-string v1, "isUserRemoveCertificatesAllowed"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1596
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1595
    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_68

    .line 1661
    :pswitch_94
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isOcspCheckEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 1664
    new-instance v9, Landroid/database/MatrixCursor;

    const-string v1, "isOcspCheckEnabled"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1669
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1668
    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_68

    :pswitch_95
    if-eqz v3, :cond_11e

    .line 1686
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_11d

    goto :goto_67

    .line 1689
    :cond_11d
    aget-object v0, v3, v15

    .line 1690
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/keystore/CertificateInfo;

    .line 1689
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateCertificateAtInstall(Lcom/samsung/android/knox/keystore/CertificateInfo;)I

    move-result v0

    .line 1693
    new-instance v9, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "validateCertificateAtInstall"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1698
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 1697
    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_68

    :cond_11e
    :goto_67
    return-object v9

    .line 1673
    :pswitch_96
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 1677
    new-instance v9, Landroid/database/MatrixCursor;

    const-string v1, "isCertificateValidationAtInstallEnabled"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1682
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 1681
    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_11f
    :goto_68
    return-object v9

    :pswitch_97
    const-string v0, "browser_policy"

    .line 2165
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/browser/BrowserPolicy;

    if-eqz v0, :cond_155

    if-eqz v2, :cond_155

    .line 2168
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_c

    :goto_69
    move/from16 v19, v20

    goto :goto_6a

    :sswitch_85
    const-string v1, "getCookiesSetting"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_125

    goto :goto_69

    :sswitch_86
    const-string v1, "getHttpProxy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_120

    goto :goto_69

    :cond_120
    move/from16 v19, v7

    goto :goto_6a

    :sswitch_87
    const-string v1, "getJavaScriptSetting"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_121

    goto :goto_69

    :cond_121
    const/16 v19, 0x3

    goto :goto_6a

    :sswitch_88
    const-string v1, "getAutoFillSetting"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_122

    goto :goto_69

    :cond_122
    move/from16 v19, v10

    goto :goto_6a

    :sswitch_89
    const-string v1, "getPopupsSetting"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_123

    goto :goto_69

    :cond_123
    move/from16 v19, v13

    goto :goto_6a

    :sswitch_8a
    const-string v1, "getForceFraudWarningSetting"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_124

    goto :goto_69

    :cond_124
    move/from16 v19, v15

    :cond_125
    :goto_6a
    packed-switch v19, :pswitch_data_d

    return-object v9

    .line 2200
    :pswitch_98
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v10}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    .line 2205
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getCookiesSetting"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2209
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2208
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6b

    .line 2170
    :pswitch_99
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getHttpProxy(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0

    .line 2173
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getHttpProxy"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2176
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6b

    .line 2215
    :pswitch_9a
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v12}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    .line 2220
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getJavaScriptSetting"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2225
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2224
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_6b

    .line 2183
    :pswitch_9b
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v7}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    .line 2188
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getAutoFillSetting"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2193
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2192
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_6b

    .line 2232
    :pswitch_9c
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v13}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    .line 2237
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getPopupsSetting"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2241
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2240
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_6b

    .line 2247
    :pswitch_9d
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    .line 2252
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "getForceFraudWarningSetting"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2256
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2255
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_6b
    return-object v1

    :pswitch_9e
    if-eqz v2, :cond_155

    .line 2414
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_d

    :goto_6c
    move/from16 v16, v20

    goto/16 :goto_6d

    :sswitch_8b
    const-string v1, "bluetoothLogForRemote"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12f

    goto :goto_6c

    :sswitch_8c
    const-string v1, "bluetoothLogForDevice"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_126

    goto :goto_6c

    :cond_126
    move/from16 v16, v6

    goto/16 :goto_6d

    :sswitch_8d
    const-string v1, "isSocketAllowedBySecurityPolicy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_127

    goto :goto_6c

    :cond_127
    move/from16 v16, v17

    goto :goto_6d

    :sswitch_8e
    const-string v1, "isSvcRfComPortNumberBlockedBySecurityPolicy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_128

    goto :goto_6c

    :cond_128
    move/from16 v16, v18

    goto :goto_6d

    :sswitch_8f
    const-string v1, "bluetoothSocketLog"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_129

    goto :goto_6c

    :cond_129
    move/from16 v16, v19

    goto :goto_6d

    :sswitch_90
    const-string v1, "isPairingAllowedbySecurityPolicy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12a

    goto :goto_6c

    :cond_12a
    move/from16 v16, v7

    goto :goto_6d

    :sswitch_91
    const-string v1, "isHeadsetAllowedBySecurityPolicy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12b

    goto :goto_6c

    :cond_12b
    const/16 v16, 0x3

    goto :goto_6d

    :sswitch_92
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12c

    goto :goto_6c

    :cond_12c
    move/from16 v16, v10

    goto :goto_6d

    :sswitch_93
    const-string v1, "bluetoothLog"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12d

    goto :goto_6c

    :cond_12d
    move/from16 v16, v13

    goto :goto_6d

    :sswitch_94
    const-string v1, "isProfileAuthorizedBySecurityPolicy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12e

    goto :goto_6c

    :cond_12e
    move/from16 v16, v15

    :cond_12f
    :goto_6d
    packed-switch v16, :pswitch_data_e

    goto/16 :goto_76

    :pswitch_9f
    if-eqz v3, :cond_131

    .line 2529
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_131

    .line 2530
    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v0

    if-nez v0, :cond_130

    goto :goto_6e

    .line 2533
    :cond_130
    aget-object v0, v3, v15

    aget-object v1, v3, v13

    aget-object v2, v3, v10

    invoke-static {v0, v1, v2}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_76

    :cond_131
    :goto_6e
    return-object v9

    :pswitch_a0
    if-eqz v3, :cond_135

    .line 2537
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_135

    .line 2538
    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v0

    if-nez v0, :cond_132

    goto :goto_6f

    .line 2541
    :cond_132
    aget-object v0, v3, v10

    if-nez v0, :cond_133

    .line 2542
    aget-object v0, v3, v15

    aget-object v1, v3, v13

    .line 2543
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2542
    invoke-static {v0, v1, v9}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_76

    .line 2545
    :cond_133
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_134

    .line 2546
    aget-object v0, v3, v15

    aget-object v1, v3, v13

    .line 2547
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2548
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    aget-object v3, v3, v10

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 2546
    invoke-static {v0, v1, v2}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_76

    :cond_134
    const-string v0, "BluetoothAdapter is null"

    .line 2551
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_76

    :cond_135
    :goto_6f
    return-object v9

    :pswitch_a1
    if-eqz v3, :cond_137

    .line 2477
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_136

    goto :goto_70

    .line 2481
    :cond_136
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    aget-object v2, v3, v15

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    aget-object v2, v3, v13

    .line 2483
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v4, v3, v10

    .line 2484
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v1, v3, v1

    .line 2485
    invoke-static {v1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v1

    .line 2480
    invoke-static {v0, v2, v4, v1}, Landroid/sec/enterprise/BluetoothUtils;->isSocketAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelUuid;)Z

    move-result v0

    .line 2487
    new-instance v9, Landroid/database/MatrixCursor;

    const-string v1, "isSocketAllowedBySecurityPolicy"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2492
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2491
    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_76

    :cond_137
    :goto_70
    return-object v9

    :pswitch_a2
    if-eqz v3, :cond_139

    .line 2506
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_138

    goto :goto_71

    .line 2509
    :cond_138
    aget-object v0, v3, v15

    .line 2510
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2509
    invoke-static {v0}, Landroid/sec/enterprise/BluetoothUtils;->isSvcRfComPortNumberBlockedBySecurityPolicy(I)Z

    move-result v0

    .line 2513
    new-instance v9, Landroid/database/MatrixCursor;

    const-string v1, "isSvcRfComPortNumberBlockedBySecurityPolicy"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2518
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2517
    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_76

    :cond_139
    :goto_71
    return-object v9

    :pswitch_a3
    if-eqz v3, :cond_13b

    .line 2496
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_13a

    goto :goto_72

    .line 2499
    :cond_13a
    aget-object v0, v3, v15

    .line 2500
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    aget-object v4, v3, v13

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    aget-object v4, v3, v10

    .line 2502
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v1, v3, v1

    .line 2503
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2499
    invoke-static {v0, v2, v4, v1}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothSocketLog(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_76

    :cond_13b
    :goto_72
    return-object v9

    :pswitch_a4
    if-eqz v3, :cond_13d

    .line 2444
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_13c

    goto :goto_73

    .line 2447
    :cond_13c
    aget-object v0, v3, v15

    invoke-static {v0}, Landroid/sec/enterprise/BluetoothUtils;->isPairingAllowedbySecurityPolicy(Ljava/lang/String;)Z

    move-result v0

    .line 2449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PAIRINGALLOWEDBYSECURITY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    new-instance v9, Landroid/database/MatrixCursor;

    const-string v1, "isPairingAllowedbySecurityPolicy"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2456
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2455
    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_76

    :cond_13d
    :goto_73
    return-object v9

    :pswitch_a5
    if-eqz v3, :cond_13f

    .line 2460
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_13e

    goto :goto_74

    .line 2464
    :cond_13e
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    aget-object v1, v3, v15

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 2463
    invoke-static {v0}, Landroid/sec/enterprise/BluetoothUtils;->isHeadsetAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 2468
    new-instance v9, Landroid/database/MatrixCursor;

    const-string v1, "isHeadsetAllowedBySecurityPolicy"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2473
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2472
    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_76

    :cond_13f
    :goto_74
    return-object v9

    .line 2432
    :pswitch_a6
    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v0

    .line 2435
    new-instance v9, Landroid/database/MatrixCursor;

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2440
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2439
    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_76

    :pswitch_a7
    if-eqz v3, :cond_141

    .line 2522
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lt v0, v10, :cond_141

    .line 2523
    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v0

    if-nez v0, :cond_140

    goto :goto_75

    .line 2526
    :cond_140
    aget-object v0, v3, v15

    aget-object v1, v3, v13

    invoke-static {v0, v1}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_76

    :cond_141
    :goto_75
    return-object v9

    :pswitch_a8
    if-eqz v3, :cond_143

    .line 2416
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_142

    goto :goto_76

    .line 2419
    :cond_142
    aget-object v0, v3, v15

    .line 2420
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    .line 2419
    invoke-static {v0}, Landroid/sec/enterprise/BluetoothUtils;->isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;)Z

    move-result v0

    .line 2423
    new-instance v9, Landroid/database/MatrixCursor;

    const-string v1, "isProfileAuthorizedBySecurityPolicy"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2428
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2427
    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_143
    :goto_76
    return-object v9

    :pswitch_a9
    const/4 v1, 0x3

    const-string v5, "bluetooth_policy"

    .line 2271
    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    if-eqz v5, :cond_155

    if-eqz v2, :cond_155

    .line 2273
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_e

    :goto_77
    move/from16 v17, v20

    goto/16 :goto_78

    :sswitch_95
    const-string v1, "isOutgoingCallsAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_144

    goto :goto_77

    :cond_144
    move/from16 v17, v6

    goto/16 :goto_78

    :sswitch_96
    const-string v1, "isLimitedDiscoverableEnabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14c

    goto :goto_77

    :sswitch_97
    const-string v1, "isBLEAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_145

    goto :goto_77

    :cond_145
    move/from16 v17, v18

    goto :goto_78

    :sswitch_98
    const-string v1, "isDiscoverableEnabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_146

    goto :goto_77

    :cond_146
    move/from16 v17, v19

    goto :goto_78

    :sswitch_99
    const-string v1, "isDesktopConnectivityEnabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_147

    goto :goto_77

    :cond_147
    move/from16 v17, v7

    goto :goto_78

    :sswitch_9a
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_148

    goto :goto_77

    :cond_148
    move/from16 v17, v1

    goto :goto_78

    :sswitch_9b
    const-string v1, "bluetoothLog"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_149

    goto :goto_77

    :cond_149
    move/from16 v17, v10

    goto :goto_78

    :sswitch_9c
    const-string v1, "isBluetoothEnabledWithMsg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14a

    goto :goto_77

    :cond_14a
    move/from16 v17, v13

    goto :goto_78

    :sswitch_9d
    const-string v1, "isBluetoothEnabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14b

    goto :goto_77

    :cond_14b
    move/from16 v17, v15

    :cond_14c
    :goto_78
    packed-switch v17, :pswitch_data_f

    return-object v9

    :pswitch_aa
    if-eqz v3, :cond_14e

    .line 2306
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_14d

    goto :goto_79

    .line 2309
    :cond_14d
    aget-object v0, v3, v15

    .line 2310
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2309
    invoke-virtual {v5, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isOutgoingCallsAllowed(Z)Z

    move-result v0

    .line 2311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOutgoingCallsAllowed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isOutgoingCallsAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2318
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2317
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_7d

    :cond_14e
    :goto_79
    return-object v9

    .line 2323
    :pswitch_ab
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v5, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isLimitedDiscoverableEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2327
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isLimitedDiscoverableEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2332
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2331
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_7d

    .line 2394
    :pswitch_ac
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v5, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBLEAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2397
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isBLEAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2402
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2401
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_7d

    .line 2336
    :pswitch_ad
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v5, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDiscoverableEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2340
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isDiscoverableEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2345
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2344
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_7d

    :pswitch_ae
    if-eqz v3, :cond_150

    .line 2349
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_14f

    goto :goto_7a

    .line 2352
    :cond_14f
    aget-object v0, v3, v15

    .line 2353
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2352
    invoke-virtual {v5, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDesktopConnectivityEnabled(Z)Z

    move-result v0

    .line 2356
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isDesktopConnectivityEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2361
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2360
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_7d

    :cond_150
    :goto_7a
    return-object v9

    .line 2381
    :pswitch_af
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v5, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothLogEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2385
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2390
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2389
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_7d

    :pswitch_b0
    if-eqz v3, :cond_152

    .line 2365
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-ge v0, v10, :cond_151

    goto :goto_7b

    .line 2368
    :cond_151
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v1, v3, v15

    aget-object v2, v3, v13

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->bluetoothLog(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2372
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "bluetoothLog"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2377
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2376
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_7d

    :cond_152
    :goto_7b
    return-object v9

    :pswitch_b1
    if-eqz v3, :cond_154

    .line 2289
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_153

    goto :goto_7c

    .line 2292
    :cond_153
    aget-object v0, v3, v15

    .line 2293
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2292
    invoke-virtual {v5, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabledWithMsg(Z)Z

    move-result v0

    .line 2294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBluetoothEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isBluetoothEnabledWithMsg"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2301
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2300
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_7d

    :cond_154
    :goto_7c
    return-object v9

    .line 2275
    :pswitch_b2
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v5, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 2277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBluetoothEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isBluetoothEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2284
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2283
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_7d
    return-object v1

    :pswitch_b3
    const-string v0, "auditlog"

    .line 2702
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/AuditLogService;

    if-eqz v0, :cond_155

    if-eqz v2, :cond_155

    const-string v1, "isAuditLogEnabled"

    .line 2705
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_155

    .line 2708
    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditLogEnabledAsUser(I)Z

    move-result v0

    .line 2712
    new-instance v1, Landroid/database/MatrixCursor;

    const-string v2, "isAuditLogEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2716
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 2715
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :cond_155
    :goto_7e
    return-object v9

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_b3
        :pswitch_a9
        :pswitch_9e
        :pswitch_97
        :pswitch_8b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_85
        :pswitch_0
        :pswitch_81
        :pswitch_74
        :pswitch_68
        :pswitch_54
        :pswitch_42
        :pswitch_2f
        :pswitch_1c
        :pswitch_17
        :pswitch_16
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_13
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x6a3a5990 -> :sswitch_9
        -0x55af2a6c -> :sswitch_8
        -0x4e3d6d40 -> :sswitch_7
        -0x499d26f4 -> :sswitch_6
        -0x414b3a47 -> :sswitch_5
        -0x30c133a0 -> :sswitch_4
        -0x2b582cae -> :sswitch_3
        0x5be9d3d -> :sswitch_2
        0x2be8dca6 -> :sswitch_1
        0x5bb25232 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x35a747d7 -> :sswitch_e
        0x1020174d -> :sswitch_d
        0x1220385a -> :sswitch_c
        0x4f30b64f -> :sswitch_b
        0x78c697e8 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x3edf31d1 -> :sswitch_12
        -0x15a386e9 -> :sswitch_11
        -0xc145ad8 -> :sswitch_10
        0x4744a7b8 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x6a3a5990 -> :sswitch_24
        -0x562f9482 -> :sswitch_23
        -0x4e3d6d40 -> :sswitch_22
        -0x460411da -> :sswitch_21
        -0x39b5211e -> :sswitch_20
        -0x37226d22 -> :sswitch_1f
        -0x3581de92 -> :sswitch_1e
        -0x30c133a0 -> :sswitch_1d
        -0x28516cec -> :sswitch_1c
        -0x9cfa0f0 -> :sswitch_1b
        -0x4e1daa7 -> :sswitch_1a
        -0x4445baa -> :sswitch_19
        -0xebe1ca -> :sswitch_18
        0x12bbc810 -> :sswitch_17
        0x5f1771f4 -> :sswitch_16
        0x730fdeab -> :sswitch_15
        0x75020c0f -> :sswitch_14
        0x788dd2ce -> :sswitch_13
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        -0x6c43a0eb -> :sswitch_36
        -0x5eef4930 -> :sswitch_35
        -0x57f5d70e -> :sswitch_34
        -0x55af2a6c -> :sswitch_33
        -0x42b9a7be -> :sswitch_32
        -0x3d0295e2 -> :sswitch_31
        -0x331a660a -> :sswitch_30
        -0x2873ac11 -> :sswitch_2f
        -0x1ad99baa -> :sswitch_2e
        -0x10b8615d -> :sswitch_2d
        -0x53b1dd2 -> :sswitch_2c
        0x21990efc -> :sswitch_2b
        0x3e90c48d -> :sswitch_2a
        0x405a90ec -> :sswitch_29
        0x53ef861d -> :sswitch_28
        0x5bb25232 -> :sswitch_27
        0x6bef28f1 -> :sswitch_26
        0x7c45f31f -> :sswitch_25
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
    .end packed-switch

    :sswitch_data_5
    .sparse-switch
        -0x74a4d725 -> :sswitch_47
        -0x71206782 -> :sswitch_46
        -0x6c0db8af -> :sswitch_45
        -0x694bd3d6 -> :sswitch_44
        -0x553c4d53 -> :sswitch_43
        -0x4d525a40 -> :sswitch_42
        -0x4406e5f2 -> :sswitch_41
        -0x39e13355 -> :sswitch_40
        -0x2de531be -> :sswitch_3f
        -0x1ab59b72 -> :sswitch_3e
        -0xa2586fa -> :sswitch_3d
        0x5ad79eb -> :sswitch_3c
        0x5be9d3d -> :sswitch_3b
        0x26581d58 -> :sswitch_3a
        0x36e6d3e0 -> :sswitch_39
        0x4bd14915 -> :sswitch_38
        0x6c3b6517 -> :sswitch_37
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
    .end packed-switch

    :sswitch_data_6
    .sparse-switch
        -0x657fd646 -> :sswitch_5a
        -0x5d9fe8ab -> :sswitch_59
        -0x5c7edb84 -> :sswitch_58
        -0x4bfd3947 -> :sswitch_57
        -0x38cefab6 -> :sswitch_56
        -0x36978d55 -> :sswitch_55
        -0x34742384 -> :sswitch_54
        -0x2d47f4e1 -> :sswitch_53
        -0x2b582cae -> :sswitch_52
        0x3e05fd -> :sswitch_51
        0x7ed85f2 -> :sswitch_50
        0x2ea4b8a5 -> :sswitch_4f
        0x3593cbd4 -> :sswitch_4e
        0x3d337bfd -> :sswitch_4d
        0x4ef9c1f9 -> :sswitch_4c
        0x64034c9f -> :sswitch_4b
        0x71560275 -> :sswitch_4a
        0x77163a49 -> :sswitch_49
        0x7e3d73d9 -> :sswitch_48
    .end sparse-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
    .end packed-switch

    :sswitch_data_7
    .sparse-switch
        -0x4e857510 -> :sswitch_65
        -0x1c894ef7 -> :sswitch_64
        -0xe2e3396 -> :sswitch_63
        -0x9b47ac1 -> :sswitch_62
        0x17f43207 -> :sswitch_61
        0x234b9a81 -> :sswitch_60
        0x48803b14 -> :sswitch_5f
        0x4e20b298 -> :sswitch_5e
        0x60a98cb9 -> :sswitch_5d
        0x65054427 -> :sswitch_5c
        0x75f9239b -> :sswitch_5b
    .end sparse-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
    .end packed-switch

    :sswitch_data_8
    .sparse-switch
        -0x7f91d479 -> :sswitch_71
        -0x7c284bba -> :sswitch_70
        -0x6f335556 -> :sswitch_6f
        -0x4cb7d87b -> :sswitch_6e
        -0x2d0cb7a5 -> :sswitch_6d
        0xdc5fecf -> :sswitch_6c
        0x33b94bbf -> :sswitch_6b
        0x367ce700 -> :sswitch_6a
        0x465482c9 -> :sswitch_69
        0x552e154b -> :sswitch_68
        0x69712d6f -> :sswitch_67
        0x6ab4c78e -> :sswitch_66
    .end sparse-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
    .end packed-switch

    :sswitch_data_9
    .sparse-switch
        -0x66608807 -> :sswitch_74
        -0x40efadf9 -> :sswitch_73
        0x63cbc5bc -> :sswitch_72
    .end sparse-switch

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_84
        :pswitch_83
        :pswitch_82
    .end packed-switch

    :sswitch_data_a
    .sparse-switch
        -0x7bb5f0b1 -> :sswitch_79
        -0x3ecb9a99 -> :sswitch_78
        0x3ba3e2f0 -> :sswitch_77
        0x62658647 -> :sswitch_76
        0x6f38e3dc -> :sswitch_75
    .end sparse-switch

    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
    .end packed-switch

    :sswitch_data_b
    .sparse-switch
        -0x7f682541 -> :sswitch_84
        -0x6f783fb9 -> :sswitch_83
        -0x51cc33cc -> :sswitch_82
        -0x4d8cc16d -> :sswitch_81
        -0x3d0bb61b -> :sswitch_80
        -0x3c6ca389 -> :sswitch_7f
        -0x3c036018 -> :sswitch_7e
        -0x3bc628df -> :sswitch_7d
        -0x374aace4 -> :sswitch_7c
        0x6305badd -> :sswitch_7b
        0x692685a1 -> :sswitch_7a
    .end sparse-switch

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
    .end packed-switch

    :sswitch_data_c
    .sparse-switch
        -0x74ddc0dd -> :sswitch_8a
        -0x67f870ad -> :sswitch_89
        -0x499a7018 -> :sswitch_88
        -0x364e80b3 -> :sswitch_87
        0x9515810 -> :sswitch_86
        0x78a801b7 -> :sswitch_85
    .end sparse-switch

    :pswitch_data_d
    .packed-switch 0x0
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
    .end packed-switch

    :sswitch_data_d
    .sparse-switch
        -0x74fa9afd -> :sswitch_94
        -0x5319be4a -> :sswitch_93
        -0x4ebf90df -> :sswitch_92
        -0x3ce44687 -> :sswitch_91
        -0x3a6a65ad -> :sswitch_90
        -0x103e8c3d -> :sswitch_8f
        0x292f3f94 -> :sswitch_8e
        0x2eef3494 -> :sswitch_8d
        0x65788769 -> :sswitch_8c
        0x7d586159 -> :sswitch_8b
    .end sparse-switch

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
    .end packed-switch

    :sswitch_data_e
    .sparse-switch
        -0x625ba203 -> :sswitch_9d
        -0x534f8be2 -> :sswitch_9c
        -0x5319be4a -> :sswitch_9b
        -0x4ebf90df -> :sswitch_9a
        -0x11927f68 -> :sswitch_99
        0x52d2774 -> :sswitch_98
        0x3670f097 -> :sswitch_97
        0x3962d1ce -> :sswitch_96
        0x6422cbe9 -> :sswitch_95
    .end sparse-switch

    :pswitch_data_f
    .packed-switch 0x0
        :pswitch_b2
        :pswitch_b1
        :pswitch_b0
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
    .end packed-switch
.end method

.method public final restrictionPolicyIsPowerOffAllowed([Ljava/lang/String;ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3115
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    .line 3116
    aget-object p0, p1, v0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 3118
    :cond_0
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0, p2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p3, p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isPowerOffAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0

    return p0
.end method

.method public final restrictionPolicyisPowerSavingModeAllowed(ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z
    .locals 0

    .line 3102
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {p2, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isPowerSavingModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 3105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "POWER_SAVING_MODE_ALLOWED cursor return "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SecContentProvider"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
