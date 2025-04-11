.class public final Lk3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk3/d;
.implements Landroid/os/IInterface;


# instance fields
.field public final c:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/b;->c:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lk3/b;->c:Landroid/os/IBinder;

    return-object p0
.end method
