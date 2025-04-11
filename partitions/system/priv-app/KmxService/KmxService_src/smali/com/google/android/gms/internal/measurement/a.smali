.class public final synthetic Lcom/google/android/gms/internal/measurement/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/internal/measurement/a;->a:I

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/a;->a:I

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/google/android/gms/internal/measurement/d0;

    new-instance v0, Lcom/google/android/gms/internal/measurement/j4;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d0;->c:Lp1/v;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/j4;-><init>(Lp1/v;)V

    return-object v0

    :pswitch_1
    check-cast p0, Lcom/google/android/gms/internal/measurement/d0;

    new-instance v0, Lcom/google/android/gms/internal/measurement/j4;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/d0;->d:Lp1/e;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/j4;-><init>(Lp1/e;)V

    return-object v0

    :goto_0
    check-cast p0, Lcom/google/android/gms/measurement/internal/o3;

    new-instance v0, Lcom/google/android/gms/internal/measurement/j4;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/o3;->k:Ld/s0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/j4;-><init>(Ld/s0;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
