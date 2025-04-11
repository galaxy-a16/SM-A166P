.class public Lcom/android/server/SystemServer$6;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Landroid/os/IServiceCreator;


# instance fields
.field public final synthetic this$0:Lcom/android/server/SystemServer;


# direct methods
.method public constructor <init>(Lcom/android/server/SystemServer;)V
    .locals 0

    .line 4850
    iput-object p1, p0, Lcom/android/server/SystemServer$6;->this$0:Lcom/android/server/SystemServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 0

    .line 4853
    new-instance p0, Lcom/android/server/emailksproxy/EmailKeystoreService;

    invoke-direct {p0, p1}, Lcom/android/server/emailksproxy/EmailKeystoreService;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
