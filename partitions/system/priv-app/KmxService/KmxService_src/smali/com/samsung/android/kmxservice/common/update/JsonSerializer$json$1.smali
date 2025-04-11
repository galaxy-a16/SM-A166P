.class final Lcom/samsung/android/kmxservice/common/update/JsonSerializer$json$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lvb/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/kmxservice/common/update/JsonSerializer;->getJson()Lkotlinx/serialization/json/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lvb/b;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/kmxservice/common/update/JsonSerializer$json$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/kmxservice/common/update/JsonSerializer$json$1;

    invoke-direct {v0}, Lcom/samsung/android/kmxservice/common/update/JsonSerializer$json$1;-><init>()V

    sput-object v0, Lcom/samsung/android/kmxservice/common/update/JsonSerializer$json$1;->INSTANCE:Lcom/samsung/android/kmxservice/common/update/JsonSerializer$json$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/serialization/json/g;

    invoke-virtual {p0, p1}, Lcom/samsung/android/kmxservice/common/update/JsonSerializer$json$1;->invoke(Lkotlinx/serialization/json/g;)V

    sget-object p0, Lkotlin/s;->a:Lkotlin/s;

    return-object p0
.end method

.method public final invoke(Lkotlinx/serialization/json/g;)V
    .locals 1

    const-string p0, "$this$Json"

    invoke-static {p1, p0}, Li4/f;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 2
    iput-boolean p0, p1, Lkotlinx/serialization/json/g;->c:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p1, Lkotlinx/serialization/json/g;->b:Z

    .line 4
    iput-boolean p0, p1, Lkotlinx/serialization/json/g;->a:Z

    return-void
.end method
