.class public Lcom/android/server/asks/InstalledAppInfo;
.super Ljava/lang/Object;
.source "UnknownStore.java"


# instance fields
.field public accessibility:Ljava/lang/String;

.field public execute:Ljava/lang/String;

.field public hasReqInstallPEM:Ljava/lang/String;

.field public initType:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public overlay:Ljava/lang/String;

.field public requestInstallerZip:Ljava/lang/String;

.field public signature:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 162
    iput-object v0, p0, Lcom/android/server/asks/InstalledAppInfo;->name:Ljava/lang/String;

    .line 163
    iput-object v0, p0, Lcom/android/server/asks/InstalledAppInfo;->signature:Ljava/lang/String;

    const-string v0, "allow"

    .line 164
    iput-object v0, p0, Lcom/android/server/asks/InstalledAppInfo;->execute:Ljava/lang/String;

    const-string v0, "block"

    .line 165
    iput-object v0, p0, Lcom/android/server/asks/InstalledAppInfo;->overlay:Ljava/lang/String;

    const-string v0, "false"

    .line 166
    iput-object v0, p0, Lcom/android/server/asks/InstalledAppInfo;->requestInstallerZip:Ljava/lang/String;

    const-string/jumbo v1, "warning"

    .line 167
    iput-object v1, p0, Lcom/android/server/asks/InstalledAppInfo;->initType:Ljava/lang/String;

    .line 168
    iput-object v0, p0, Lcom/android/server/asks/InstalledAppInfo;->accessibility:Ljava/lang/String;

    .line 169
    iput-object v0, p0, Lcom/android/server/asks/InstalledAppInfo;->hasReqInstallPEM:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/android/server/asks/InstalledAppInfo;->name:Ljava/lang/String;

    .line 173
    iput-object p2, p0, Lcom/android/server/asks/InstalledAppInfo;->signature:Ljava/lang/String;

    .line 174
    iput-object p3, p0, Lcom/android/server/asks/InstalledAppInfo;->execute:Ljava/lang/String;

    .line 175
    iput-object p4, p0, Lcom/android/server/asks/InstalledAppInfo;->overlay:Ljava/lang/String;

    .line 176
    iput-object p5, p0, Lcom/android/server/asks/InstalledAppInfo;->requestInstallerZip:Ljava/lang/String;

    .line 177
    iput-object p6, p0, Lcom/android/server/asks/InstalledAppInfo;->initType:Ljava/lang/String;

    .line 178
    iput-object p7, p0, Lcom/android/server/asks/InstalledAppInfo;->accessibility:Ljava/lang/String;

    .line 179
    iput-object p8, p0, Lcom/android/server/asks/InstalledAppInfo;->hasReqInstallPEM:Ljava/lang/String;

    return-void
.end method
