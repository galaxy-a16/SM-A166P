.class public final Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;
.super Ljava/lang/Object;
.source "EmailKeystoreService.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final context:Landroid/content/Context;

.field public final service:Landroid/security/IKeyChainService;

.field public final serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;)V
    .locals 0

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iput-object p1, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->context:Landroid/content/Context;

    .line 381
    iput-object p2, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->serviceConnection:Landroid/content/ServiceConnection;

    .line 382
    iput-object p3, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->service:Landroid/security/IKeyChainService;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public getService()Landroid/security/IKeyChainService;
    .locals 0

    .line 390
    iget-object p0, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;->service:Landroid/security/IKeyChainService;

    return-object p0
.end method
