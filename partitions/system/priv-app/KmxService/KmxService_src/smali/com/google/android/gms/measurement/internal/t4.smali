.class public final Lcom/google/android/gms/measurement/internal/t4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/u4;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/u4;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/gms/measurement/internal/t4;->a:I

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/t4;->b:Lcom/google/android/gms/measurement/internal/u4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/t4;->a:I

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/t4;->b:Lcom/google/android/gms/measurement/internal/u4;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/u4;->j:Lcom/google/android/gms/measurement/internal/r4;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/u4;->e:Lcom/google/android/gms/measurement/internal/r4;

    return-void

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/u4;->j:Lcom/google/android/gms/measurement/internal/r4;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
