.class public interface abstract Lcom/google/android/gms/internal/measurement/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final J:Lcom/google/android/gms/internal/measurement/r;

.field public static final M:Lcom/google/android/gms/internal/measurement/l;

.field public static final S:Lcom/google/android/gms/internal/measurement/f;

.field public static final U:Lcom/google/android/gms/internal/measurement/f;

.field public static final W:Lcom/google/android/gms/internal/measurement/f;

.field public static final a0:Lcom/google/android/gms/internal/measurement/e;

.field public static final b0:Lcom/google/android/gms/internal/measurement/e;

.field public static final c0:Lcom/google/android/gms/internal/measurement/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/r;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/r;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/n;->J:Lcom/google/android/gms/internal/measurement/r;

    new-instance v0, Lcom/google/android/gms/internal/measurement/l;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/l;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/n;->M:Lcom/google/android/gms/internal/measurement/l;

    new-instance v0, Lcom/google/android/gms/internal/measurement/f;

    const-string v1, "continue"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/n;->S:Lcom/google/android/gms/internal/measurement/f;

    new-instance v0, Lcom/google/android/gms/internal/measurement/f;

    const-string v1, "break"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/n;->U:Lcom/google/android/gms/internal/measurement/f;

    new-instance v0, Lcom/google/android/gms/internal/measurement/f;

    const-string v1, "return"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/n;->W:Lcom/google/android/gms/internal/measurement/f;

    new-instance v0, Lcom/google/android/gms/internal/measurement/e;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/e;-><init>(Ljava/lang/Boolean;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/n;->a0:Lcom/google/android/gms/internal/measurement/e;

    new-instance v0, Lcom/google/android/gms/internal/measurement/e;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/e;-><init>(Ljava/lang/Boolean;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/n;->b0:Lcom/google/android/gms/internal/measurement/e;

    new-instance v0, Lcom/google/android/gms/internal/measurement/q;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/q;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/n;->c0:Lcom/google/android/gms/internal/measurement/q;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Double;
.end method

.method public abstract b()Lcom/google/android/gms/internal/measurement/n;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract f()Ljava/util/Iterator;
.end method

.method public abstract j(Ljava/lang/String;Lcom/google/firebase/messaging/r;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/measurement/n;
.end method

.method public abstract k()Ljava/lang/Boolean;
.end method
