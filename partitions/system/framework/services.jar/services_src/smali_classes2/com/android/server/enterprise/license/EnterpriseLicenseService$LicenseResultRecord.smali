.class public Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;
.super Ljava/lang/Object;
.source "EnterpriseLicenseService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public callback:Lcom/samsung/android/knox/license/ILicenseResultCallback;

.field public final licenseKey:Ljava/lang/String;

.field public pkgName:Ljava/lang/String;

.field public recordMap:Ljava/util/Map;

.field public final synthetic this$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetcallback(Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)Lcom/samsung/android/knox/license/ILicenseResultCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->callback:Lcom/samsung/android/knox/license/ILicenseResultCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetlicenseKey(Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->licenseKey:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->this$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->licenseKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->callback:Lcom/samsung/android/knox/license/ILicenseResultCallback;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->this$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->pkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->licenseKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->callback:Lcom/samsung/android/knox/license/ILicenseResultCallback;

    iput-object p5, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->recordMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "binderDied() pkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseLicenseService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->this$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->pkgName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->recordMap:Ljava/util/Map;

    invoke-static {v0, v1, p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->-$$Nest$munregisterLicenseResultRecord(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
