.class public Lcom/android/server/SystemServer$7;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Landroid/os/IServiceCreator;


# instance fields
.field public final synthetic this$0:Lcom/android/server/SystemServer;


# direct methods
.method public constructor <init>(Lcom/android/server/SystemServer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/SystemServer$7;->this$0:Lcom/android/server/SystemServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 1

    const-string p0, "SystemServer"

    const-string v0, "before SemAuthnrService adding"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;

    invoke-direct {p0, p1}, Lcom/samsung/android/authnrservice/service/SemAuthnrService;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
