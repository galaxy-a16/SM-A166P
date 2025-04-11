.class public Lcom/android/server/knox/zt/devicetrust/data/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final EMPTY_STRING:Ljava/lang/String; = ""


# instance fields
.field public mPm:Landroid/content/pm/IPackageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/data/Utils;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/data/Utils;->mPm:Landroid/content/pm/IPackageManager;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/knox/zt/devicetrust/data/Utils-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/knox/zt/devicetrust/data/Utils;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/knox/zt/devicetrust/data/Utils;
    .locals 1

    .line 59
    invoke-static {}, Lcom/android/server/knox/zt/devicetrust/data/Utils$InstanceHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/knox/zt/devicetrust/data/Utils;

    move-result-object v0

    return-object v0
.end method

.method public static nullSafe(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final getPackageManager()Landroid/content/pm/IPackageManager;
    .locals 0

    const-string/jumbo p0, "package"

    .line 20
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object p0

    return-object p0
.end method

.method public getPackageNameForUid(I)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/data/Utils;->mPm:Landroid/content/pm/IPackageManager;

    if-eqz p0, :cond_0

    .line 47
    :try_start_0
    invoke-interface {p0, p1}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    .line 52
    :goto_0
    invoke-static {p0}, Lcom/android/server/knox/zt/devicetrust/data/Utils;->nullSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getProcessNameForPid(I)Ljava/lang/String;
    .locals 0

    .line 36
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/server/pm/PmServerUtils;->getProcessNameForPid(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    .line 40
    :goto_0
    invoke-static {p0}, Lcom/android/server/knox/zt/devicetrust/data/Utils;->nullSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSecurityContextForPid(I)Ljava/lang/String;
    .locals 0

    .line 26
    :try_start_0
    invoke-static {p1}, Landroid/os/SELinux;->getPidContext(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    invoke-static {p0}, Lcom/android/server/knox/zt/devicetrust/data/Utils;->nullSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
