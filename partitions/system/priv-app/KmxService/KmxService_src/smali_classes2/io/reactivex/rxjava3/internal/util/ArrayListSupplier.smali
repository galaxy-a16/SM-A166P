.class public final enum Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Llb/j;
.implements Llb/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;",
        ">;",
        "Llb/j;",
        "Llb/h;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;

.field public static final enum INSTANCE:Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;->INSTANCE:Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;

    aput-object v0, v1, v2

    sput-object v1, Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;->$VALUES:[Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static asFunction()Llb/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">()",
            "Llb/h;"
        }
    .end annotation

    sget-object v0, Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;->INSTANCE:Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;

    return-object v0
.end method

.method public static asSupplier()Llb/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Llb/j;"
        }
    .end annotation

    sget-object v0, Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;->INSTANCE:Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;
    .locals 1

    const-class v0, Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;

    return-object p0
.end method

.method public static values()[Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;
    .locals 1

    sget-object v0, Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;->$VALUES:[Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;

    invoke-virtual {v0}, [Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;->apply(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/util/ArrayListSupplier;->get()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method
