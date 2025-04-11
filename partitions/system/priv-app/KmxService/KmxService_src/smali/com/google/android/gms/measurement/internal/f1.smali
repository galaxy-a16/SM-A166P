.class public final synthetic Lcom/google/android/gms/measurement/internal/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/l2;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/measurement/internal/f1;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/f1;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/f1;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/f1;->a:Lcom/google/android/gms/measurement/internal/f1;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/google/android/gms/measurement/internal/o2;->a:Ljava/util/List;

    sget-object p0, Lcom/google/android/gms/internal/measurement/f6;->b:Lcom/google/android/gms/internal/measurement/f6;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/f6;->a:Lcom/google/android/gms/internal/measurement/q3;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/q3;->zza()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/g6;

    check-cast p0, Lcom/google/android/gms/internal/measurement/h6;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/android/gms/internal/measurement/h6;->a:Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/o3;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
