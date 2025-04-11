.class public final Lcom/google/android/datatransport/runtime/dagger/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/dagger/internal/b;
.implements Lpc/c;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/datatransport/runtime/dagger/internal/c;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeTo(Lpc/a;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/c;->a:Ljava/lang/Object;

    check-cast p1, Lt6/a;

    invoke-virtual {p1, p0}, Lt6/a;->j(Ljava/lang/Object;)Lt6/a;

    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/dagger/internal/c;->a:Ljava/lang/Object;

    return-object p0
.end method
